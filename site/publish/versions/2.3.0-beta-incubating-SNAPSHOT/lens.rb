#
# 
#
# Generated by <a href="http://enunciate.codehaus.org">Enunciate</a>.
#
require 'json'

# adding necessary json serialization methods to standard classes.
class Object
  def to_jaxb_json_hash
    return self
  end
  def self.from_json o
    return o
  end
end

class String
  def self.from_json o
    return o
  end
end

class Boolean
  def self.from_json o
    return o
  end
end

class Numeric
  def self.from_json o
    return o
  end
end

class Time
  #json time is represented as number of milliseconds since epoch
  def to_jaxb_json_hash
    return (to_i * 1000) + (usec / 1000)
  end
  def self.from_json o
    if o.nil?
      return nil
    else
      return Time.at(o / 1000, (o % 1000) * 1000)
    end
  end
end

class Array
  def to_jaxb_json_hash
    a = Array.new
    each { | _item | a.push _item.to_jaxb_json_hash }
    return a
  end
end

class Hash
  def to_jaxb_json_hash
    h = Hash.new
    each { | _key, _value | h[_key.to_jaxb_json_hash] = _value.to_jaxb_json_hash }
    return h
  end
end


module Org

module Apache

module Lens

module Api

  # 
  class DateTime 

    # (no documentation provided)
    attr_accessor :date

    # the json hash for this DateTime
    def to_jaxb_json_hash
      _h = {}
      _h['date'] = date.to_jaxb_json_hash unless date.nil?
      return _h
    end

    # the json (string form) for this DateTime
    def to_json
      to_jaxb_json_hash.to_json
    end

    #initializes this DateTime with a json hash
    def init_jaxb_json_hash(_o)
      @date = Time.from_json(_o['date']) unless _o['date'].nil?
    end

    # constructs a DateTime from a (parsed) JSON hash
    def self.from_json(o)
      if o.nil?
        return nil
      else
        inst = new
        inst.init_jaxb_json_hash o
        return inst
      end
    end
  end

end

end

end

end

module Org

module Apache

module Lens

module Api

  # 
  class LensSessionHandle 

    # (no documentation provided)
    attr_accessor :secretId
    # (no documentation provided)
    attr_accessor :publicId

    # the json hash for this LensSessionHandle
    def to_jaxb_json_hash
      _h = {}
      _h['secretId'] = secretId.to_jaxb_json_hash unless secretId.nil?
      _h['publicId'] = publicId.to_jaxb_json_hash unless publicId.nil?
      return _h
    end

    # the json (string form) for this LensSessionHandle
    def to_json
      to_jaxb_json_hash.to_json
    end

    #initializes this LensSessionHandle with a json hash
    def init_jaxb_json_hash(_o)
      @secretId = String.from_json(_o['secretId']) unless _o['secretId'].nil?
      @publicId = String.from_json(_o['publicId']) unless _o['publicId'].nil?
    end

    # constructs a LensSessionHandle from a (parsed) JSON hash
    def self.from_json(o)
      if o.nil?
        return nil
      else
        inst = new
        inst.init_jaxb_json_hash o
        return inst
      end
    end
  end

end

end

end

end

module Org

module Apache

module Lens

module Api

  # 
  class StringList 

    # (no documentation provided)
    attr_accessor :elements

    # the json hash for this StringList
    def to_jaxb_json_hash
      _h = {}
      if !elements.nil?
        _ha = Array.new
        elements.each { | _item | _ha.push _item.to_jaxb_json_hash }
        _h['elements'] = _ha
      end
      return _h
    end

    # the json (string form) for this StringList
    def to_json
      to_jaxb_json_hash.to_json
    end

    #initializes this StringList with a json hash
    def init_jaxb_json_hash(_o)
      if !_o['elements'].nil?
        @elements = Array.new
        _oa = _o['elements']
        _oa.each { | _item | @elements.push String.from_json(_item) }
      end
    end

    # constructs a StringList from a (parsed) JSON hash
    def self.from_json(o)
      if o.nil?
        return nil
      else
        inst = new
        inst.init_jaxb_json_hash o
        return inst
      end
    end
  end

end

end

end

end

module Org

module Apache

module Lens

module Api

module Query

  # 
  class QueryResultSetMetadata 

    # (no documentation provided)
    attr_accessor :columns

    # the json hash for this QueryResultSetMetadata
    def to_jaxb_json_hash
      _h = {}
      if !columns.nil?
        _ha = Array.new
        columns.each { | _item | _ha.push _item.to_jaxb_json_hash }
        _h['columns'] = _ha
      end
      return _h
    end

    # the json (string form) for this QueryResultSetMetadata
    def to_json
      to_jaxb_json_hash.to_json
    end

    #initializes this QueryResultSetMetadata with a json hash
    def init_jaxb_json_hash(_o)
      if !_o['columns'].nil?
        @columns = Array.new
        _oa = _o['columns']
        _oa.each { | _item | @columns.push Org::Apache::Lens::Api::Query::ResultColumn.from_json(_item) }
      end
    end

    # constructs a QueryResultSetMetadata from a (parsed) JSON hash
    def self.from_json(o)
      if o.nil?
        return nil
      else
        inst = new
        inst.init_jaxb_json_hash o
        return inst
      end
    end
  end

end

end

end

end

end

module Org

module Apache

module Lens

module Api

module Query

  # 
  class QueryResult 


    # the json hash for this QueryResult
    def to_jaxb_json_hash
      _h = {}
      return _h
    end

    # the json (string form) for this QueryResult
    def to_json
      to_jaxb_json_hash.to_json
    end

    #initializes this QueryResult with a json hash
    def init_jaxb_json_hash(_o)
    end

    # constructs a QueryResult from a (parsed) JSON hash
    def self.from_json(o)
      if o.nil?
        return nil
      else
        inst = new
        inst.init_jaxb_json_hash o
        return inst
      end
    end
  end

end

end

end

end

end

module Org

module Apache

module Lens

module Api

module Query

  # 
  class LensPreparedQuery 

    # (no documentation provided)
    attr_accessor :driverQuery
    # (no documentation provided)
    attr_accessor :prepareHandle
    # (no documentation provided)
    attr_accessor :userQuery
    # (no documentation provided)
    attr_accessor :conf
    # (no documentation provided)
    attr_accessor :preparedTime
    # (no documentation provided)
    attr_accessor :preparedUser
    # (no documentation provided)
    attr_accessor :selectedDriverClassName

    # the json hash for this LensPreparedQuery
    def to_jaxb_json_hash
      _h = {}
      _h['driverQuery'] = driverQuery.to_jaxb_json_hash unless driverQuery.nil?
      _h['prepareHandle'] = prepareHandle.to_jaxb_json_hash unless prepareHandle.nil?
      _h['userQuery'] = userQuery.to_jaxb_json_hash unless userQuery.nil?
      _h['conf'] = conf.to_jaxb_json_hash unless conf.nil?
      _h['preparedTime'] = preparedTime.to_jaxb_json_hash unless preparedTime.nil?
      _h['preparedUser'] = preparedUser.to_jaxb_json_hash unless preparedUser.nil?
      _h['selectedDriverClassName'] = selectedDriverClassName.to_jaxb_json_hash unless selectedDriverClassName.nil?
      return _h
    end

    # the json (string form) for this LensPreparedQuery
    def to_json
      to_jaxb_json_hash.to_json
    end

    #initializes this LensPreparedQuery with a json hash
    def init_jaxb_json_hash(_o)
      @driverQuery = String.from_json(_o['driverQuery']) unless _o['driverQuery'].nil?
      @prepareHandle = Org::Apache::Lens::Api::Query::QueryPrepareHandle.from_json(_o['prepareHandle']) unless _o['prepareHandle'].nil?
      @userQuery = String.from_json(_o['userQuery']) unless _o['userQuery'].nil?
      @conf = Org::Apache::Lens::Api::LensConf.from_json(_o['conf']) unless _o['conf'].nil?
      @preparedTime = Time.from_json(_o['preparedTime']) unless _o['preparedTime'].nil?
      @preparedUser = String.from_json(_o['preparedUser']) unless _o['preparedUser'].nil?
      @selectedDriverClassName = String.from_json(_o['selectedDriverClassName']) unless _o['selectedDriverClassName'].nil?
    end

    # constructs a LensPreparedQuery from a (parsed) JSON hash
    def self.from_json(o)
      if o.nil?
        return nil
      else
        inst = new
        inst.init_jaxb_json_hash o
        return inst
      end
    end
  end

end

end

end

end

end

module Org

module Apache

module Lens

module Api

module Query

  # 
  class LensQuery 

    # (no documentation provided)
    attr_accessor :driverQuery
    # (no documentation provided)
    attr_accessor :isPersistent
    # (no documentation provided)
    attr_accessor :finishTime
    # (no documentation provided)
    attr_accessor :queryHandle
    # (no documentation provided)
    attr_accessor :selectedDriverClassName
    # (no documentation provided)
    attr_accessor :priority
    # (no documentation provided)
    attr_accessor :driverStartTime
    # (no documentation provided)
    attr_accessor :driverOpHandle
    # (no documentation provided)
    attr_accessor :launchTime
    # (no documentation provided)
    attr_accessor :submittedUser
    # (no documentation provided)
    attr_accessor :driverFinishTime
    # (no documentation provided)
    attr_accessor :queryConf
    # (no documentation provided)
    attr_accessor :status
    # (no documentation provided)
    attr_accessor :submissionTime
    # (no documentation provided)
    attr_accessor :resultSetPath
    # (no documentation provided)
    attr_accessor :queryName
    # (no documentation provided)
    attr_accessor :closedTime
    # (no documentation provided)
    attr_accessor :userQuery

    # the json hash for this LensQuery
    def to_jaxb_json_hash
      _h = {}
      _h['driverQuery'] = driverQuery.to_jaxb_json_hash unless driverQuery.nil?
      _h['isPersistent'] = isPersistent.to_jaxb_json_hash unless isPersistent.nil?
      _h['finishTime'] = finishTime.to_jaxb_json_hash unless finishTime.nil?
      _h['queryHandle'] = queryHandle.to_jaxb_json_hash unless queryHandle.nil?
      _h['selectedDriverClassName'] = selectedDriverClassName.to_jaxb_json_hash unless selectedDriverClassName.nil?
      _h['priority'] = priority.to_jaxb_json_hash unless priority.nil?
      _h['driverStartTime'] = driverStartTime.to_jaxb_json_hash unless driverStartTime.nil?
      _h['driverOpHandle'] = driverOpHandle.to_jaxb_json_hash unless driverOpHandle.nil?
      _h['launchTime'] = launchTime.to_jaxb_json_hash unless launchTime.nil?
      _h['submittedUser'] = submittedUser.to_jaxb_json_hash unless submittedUser.nil?
      _h['driverFinishTime'] = driverFinishTime.to_jaxb_json_hash unless driverFinishTime.nil?
      _h['queryConf'] = queryConf.to_jaxb_json_hash unless queryConf.nil?
      _h['status'] = status.to_jaxb_json_hash unless status.nil?
      _h['submissionTime'] = submissionTime.to_jaxb_json_hash unless submissionTime.nil?
      _h['resultSetPath'] = resultSetPath.to_jaxb_json_hash unless resultSetPath.nil?
      _h['queryName'] = queryName.to_jaxb_json_hash unless queryName.nil?
      _h['closedTime'] = closedTime.to_jaxb_json_hash unless closedTime.nil?
      _h['userQuery'] = userQuery.to_jaxb_json_hash unless userQuery.nil?
      return _h
    end

    # the json (string form) for this LensQuery
    def to_json
      to_jaxb_json_hash.to_json
    end

    #initializes this LensQuery with a json hash
    def init_jaxb_json_hash(_o)
      @driverQuery = String.from_json(_o['driverQuery']) unless _o['driverQuery'].nil?
      @isPersistent = Boolean.from_json(_o['isPersistent']) unless _o['isPersistent'].nil?
      @finishTime = Bignum.from_json(_o['finishTime']) unless _o['finishTime'].nil?
      @queryHandle = Org::Apache::Lens::Api::Query::QueryHandle.from_json(_o['queryHandle']) unless _o['queryHandle'].nil?
      @selectedDriverClassName = String.from_json(_o['selectedDriverClassName']) unless _o['selectedDriverClassName'].nil?
      @priority = String.from_json(_o['priority']) unless _o['priority'].nil?
      @driverStartTime = Bignum.from_json(_o['driverStartTime']) unless _o['driverStartTime'].nil?
      @driverOpHandle = String.from_json(_o['driverOpHandle']) unless _o['driverOpHandle'].nil?
      @launchTime = Bignum.from_json(_o['launchTime']) unless _o['launchTime'].nil?
      @submittedUser = String.from_json(_o['submittedUser']) unless _o['submittedUser'].nil?
      @driverFinishTime = Bignum.from_json(_o['driverFinishTime']) unless _o['driverFinishTime'].nil?
      @queryConf = Org::Apache::Lens::Api::LensConf.from_json(_o['queryConf']) unless _o['queryConf'].nil?
      @status = Org::Apache::Lens::Api::Query::QueryStatus.from_json(_o['status']) unless _o['status'].nil?
      @submissionTime = Bignum.from_json(_o['submissionTime']) unless _o['submissionTime'].nil?
      @resultSetPath = String.from_json(_o['resultSetPath']) unless _o['resultSetPath'].nil?
      @queryName = String.from_json(_o['queryName']) unless _o['queryName'].nil?
      @closedTime = Bignum.from_json(_o['closedTime']) unless _o['closedTime'].nil?
      @userQuery = String.from_json(_o['userQuery']) unless _o['userQuery'].nil?
    end

    # constructs a LensQuery from a (parsed) JSON hash
    def self.from_json(o)
      if o.nil?
        return nil
      else
        inst = new
        inst.init_jaxb_json_hash o
        return inst
      end
    end
  end

end

end

end

end

end

module Org

module Apache

module Lens

module Api

  # 
  class LensConf 

    # (no documentation provided)
    attr_accessor :properties

    # the json hash for this LensConf
    def to_jaxb_json_hash
      _h = {}
      _h['properties'] = properties.to_jaxb_json_hash unless properties.nil?
      return _h
    end

    # the json (string form) for this LensConf
    def to_json
      to_jaxb_json_hash.to_json
    end

    #initializes this LensConf with a json hash
    def init_jaxb_json_hash(_o)
      @properties = Hash.from_json(_o['properties']) unless _o['properties'].nil?
    end

    # constructs a LensConf from a (parsed) JSON hash
    def self.from_json(o)
      if o.nil?
        return nil
      else
        inst = new
        inst.init_jaxb_json_hash o
        return inst
      end
    end
  end

end

end

end

end

module Org

module Apache

module Lens

module Api

module Query

  # 
  class QueryStatus 

    # (no documentation provided)
    attr_accessor :errorMessage
    # (no documentation provided)
    attr_accessor :lensErrorTO
    # (no documentation provided)
    attr_accessor :progressMessage
    # (no documentation provided)
    attr_accessor :statusMessage
    # (no documentation provided)
    attr_accessor :isResultSetAvailable
    # (no documentation provided)
    attr_accessor :status
    # (no documentation provided)
    attr_accessor :progress

    # the json hash for this QueryStatus
    def to_jaxb_json_hash
      _h = {}
      _h['errorMessage'] = errorMessage.to_jaxb_json_hash unless errorMessage.nil?
      _h['lensErrorTO'] = lensErrorTO.to_jaxb_json_hash unless lensErrorTO.nil?
      _h['progressMessage'] = progressMessage.to_jaxb_json_hash unless progressMessage.nil?
      _h['statusMessage'] = statusMessage.to_jaxb_json_hash unless statusMessage.nil?
      _h['isResultSetAvailable'] = isResultSetAvailable.to_jaxb_json_hash unless isResultSetAvailable.nil?
      _h['status'] = status.to_jaxb_json_hash unless status.nil?
      _h['progress'] = progress.to_jaxb_json_hash unless progress.nil?
      return _h
    end

    # the json (string form) for this QueryStatus
    def to_json
      to_jaxb_json_hash.to_json
    end

    #initializes this QueryStatus with a json hash
    def init_jaxb_json_hash(_o)
      @errorMessage = String.from_json(_o['errorMessage']) unless _o['errorMessage'].nil?
      @lensErrorTO = Org::Apache::Lens::Api::Result::LensErrorTO.from_json(_o['lensErrorTO']) unless _o['lensErrorTO'].nil?
      @progressMessage = String.from_json(_o['progressMessage']) unless _o['progressMessage'].nil?
      @statusMessage = String.from_json(_o['statusMessage']) unless _o['statusMessage'].nil?
      @isResultSetAvailable = Boolean.from_json(_o['isResultSetAvailable']) unless _o['isResultSetAvailable'].nil?
      @status = String.from_json(_o['status']) unless _o['status'].nil?
      @progress = Float.from_json(_o['progress']) unless _o['progress'].nil?
    end

    # constructs a QueryStatus from a (parsed) JSON hash
    def self.from_json(o)
      if o.nil?
        return nil
      else
        inst = new
        inst.init_jaxb_json_hash o
        return inst
      end
    end
  end

end

end

end

end

end

module Org

module Apache

module Lens

module Api

module Query

  # 
  class QuerySubmitResult 


    # the json hash for this QuerySubmitResult
    def to_jaxb_json_hash
      _h = {}
      return _h
    end

    # the json (string form) for this QuerySubmitResult
    def to_json
      to_jaxb_json_hash.to_json
    end

    #initializes this QuerySubmitResult with a json hash
    def init_jaxb_json_hash(_o)
    end

    # constructs a QuerySubmitResult from a (parsed) JSON hash
    def self.from_json(o)
      if o.nil?
        return nil
      else
        inst = new
        inst.init_jaxb_json_hash o
        return inst
      end
    end
  end

end

end

end

end

end

module Org

module Apache

module Lens

module Api

module Query

  # 
  class ResultColumn 

    # (no documentation provided)
    attr_accessor :type
    # (no documentation provided)
    attr_accessor :name

    # the json hash for this ResultColumn
    def to_jaxb_json_hash
      _h = {}
      _h['type'] = type.to_jaxb_json_hash unless type.nil?
      _h['name'] = name.to_jaxb_json_hash unless name.nil?
      return _h
    end

    # the json (string form) for this ResultColumn
    def to_json
      to_jaxb_json_hash.to_json
    end

    #initializes this ResultColumn with a json hash
    def init_jaxb_json_hash(_o)
      @type = String.from_json(_o['type']) unless _o['type'].nil?
      @name = String.from_json(_o['name']) unless _o['name'].nil?
    end

    # constructs a ResultColumn from a (parsed) JSON hash
    def self.from_json(o)
      if o.nil?
        return nil
      else
        inst = new
        inst.init_jaxb_json_hash o
        return inst
      end
    end
  end

end

end

end

end

end

module Org

module Apache

module Lens

module Api

module Result

  # 
  class LensAPIResult 

    # (no documentation provided)
    attr_accessor :lensErrorTO
    # (no documentation provided)
    attr_accessor :id
    # (no documentation provided)
    attr_accessor :data
    # (no documentation provided)
    attr_accessor :apiVersion

    # the json hash for this LensAPIResult
    def to_jaxb_json_hash
      _h = {}
      _h['error'] = lensErrorTO.to_jaxb_json_hash unless lensErrorTO.nil?
      _h['id'] = id.to_jaxb_json_hash unless id.nil?
      _h['data'] = data.to_jaxb_json_hash unless data.nil?
      _h['apiVersion'] = apiVersion.to_jaxb_json_hash unless apiVersion.nil?
      return _h
    end

    # the json (string form) for this LensAPIResult
    def to_json
      to_jaxb_json_hash.to_json
    end

    #initializes this LensAPIResult with a json hash
    def init_jaxb_json_hash(_o)
      @lensErrorTO = Org::Apache::Lens::Api::Result::LensErrorTO.from_json(_o['error']) unless _o['error'].nil?
      @id = String.from_json(_o['id']) unless _o['id'].nil?
      @data = Object.from_json(_o['data']) unless _o['data'].nil?
      @apiVersion = String.from_json(_o['apiVersion']) unless _o['apiVersion'].nil?
    end

    # constructs a LensAPIResult from a (parsed) JSON hash
    def self.from_json(o)
      if o.nil?
        return nil
      else
        inst = new
        inst.init_jaxb_json_hash o
        return inst
      end
    end
  end

end

end

end

end

end

module Org

module Apache

module Lens

module Api

module Result

  # 
  class NoErrorPayload 


    # the json hash for this NoErrorPayload
    def to_jaxb_json_hash
      _h = {}
      return _h
    end

    # the json (string form) for this NoErrorPayload
    def to_json
      to_jaxb_json_hash.to_json
    end

    #initializes this NoErrorPayload with a json hash
    def init_jaxb_json_hash(_o)
    end

    # constructs a NoErrorPayload from a (parsed) JSON hash
    def self.from_json(o)
      if o.nil?
        return nil
      else
        inst = new
        inst.init_jaxb_json_hash o
        return inst
      end
    end
  end

end

end

end

end

end

module Org

module Apache

module Lens

module Api

module Result

  # 
  class NoResultData 


    # the json hash for this NoResultData
    def to_jaxb_json_hash
      _h = {}
      return _h
    end

    # the json (string form) for this NoResultData
    def to_json
      to_jaxb_json_hash.to_json
    end

    #initializes this NoResultData with a json hash
    def init_jaxb_json_hash(_o)
    end

    # constructs a NoResultData from a (parsed) JSON hash
    def self.from_json(o)
      if o.nil?
        return nil
      else
        inst = new
        inst.init_jaxb_json_hash o
        return inst
      end
    end
  end

end

end

end

end

end

module Org

module Apache

module Lens

module Api

module Result

  # 
  class LensErrorTO 

    # (no documentation provided)
    attr_accessor :childErrors
    # (no documentation provided)
    attr_accessor :message
    # (no documentation provided)
    attr_accessor :code
    # (no documentation provided)
    attr_accessor :payload
    # (no documentation provided)
    attr_accessor :stackTrace

    # the json hash for this LensErrorTO
    def to_jaxb_json_hash
      _h = {}
      if !childErrors.nil?
        _ha = Array.new
        childErrors.each { | _item | _ha.push _item.to_jaxb_json_hash }
        _h['childErrors'] = _ha
      end
      _h['message'] = message.to_jaxb_json_hash unless message.nil?
      _h['code'] = code.to_jaxb_json_hash unless code.nil?
      _h['payload'] = payload.to_jaxb_json_hash unless payload.nil?
      _h['stackTrace'] = stackTrace.to_jaxb_json_hash unless stackTrace.nil?
      return _h
    end

    # the json (string form) for this LensErrorTO
    def to_json
      to_jaxb_json_hash.to_json
    end

    #initializes this LensErrorTO with a json hash
    def init_jaxb_json_hash(_o)
      if !_o['childErrors'].nil?
        @childErrors = Array.new
        _oa = _o['childErrors']
        _oa.each { | _item | @childErrors.push Org::Apache::Lens::Api::Result::LensErrorTO.from_json(_item) }
      end
      @message = String.from_json(_o['message']) unless _o['message'].nil?
      @code = Fixnum.from_json(_o['code']) unless _o['code'].nil?
      @payload = Object.from_json(_o['payload']) unless _o['payload'].nil?
      @stackTrace = String.from_json(_o['stackTrace']) unless _o['stackTrace'].nil?
    end

    # constructs a LensErrorTO from a (parsed) JSON hash
    def self.from_json(o)
      if o.nil?
        return nil
      else
        inst = new
        inst.init_jaxb_json_hash o
        return inst
      end
    end
  end

end

end

end

end

end

module Org

module Apache

module Lens

module Api

module Query

  # 
  class ResultRow 

    # (no documentation provided)
    attr_accessor :values

    # the json hash for this ResultRow
    def to_jaxb_json_hash
      _h = {}
      if !values.nil?
        _ha = Array.new
        values.each { | _item | _ha.push _item.to_jaxb_json_hash }
        _h['values'] = _ha
      end
      return _h
    end

    # the json (string form) for this ResultRow
    def to_json
      to_jaxb_json_hash.to_json
    end

    #initializes this ResultRow with a json hash
    def init_jaxb_json_hash(_o)
      if !_o['values'].nil?
        @values = Array.new
        _oa = _o['values']
        _oa.each { | _item | @values.push Object.from_json(_item) }
      end
    end

    # constructs a ResultRow from a (parsed) JSON hash
    def self.from_json(o)
      if o.nil?
        return nil
      else
        inst = new
        inst.init_jaxb_json_hash o
        return inst
      end
    end
  end

end

end

end

end

end

module Org

module Apache

module Lens

module Api

  # 
  class APIResult 

    # (no documentation provided)
    attr_accessor :status
    # (no documentation provided)
    attr_accessor :message

    # the json hash for this APIResult
    def to_jaxb_json_hash
      _h = {}
      _h['status'] = status.to_jaxb_json_hash unless status.nil?
      _h['message'] = message.to_jaxb_json_hash unless message.nil?
      return _h
    end

    # the json (string form) for this APIResult
    def to_json
      to_jaxb_json_hash.to_json
    end

    #initializes this APIResult with a json hash
    def init_jaxb_json_hash(_o)
      @status = String.from_json(_o['status']) unless _o['status'].nil?
      @message = String.from_json(_o['message']) unless _o['message'].nil?
    end

    # constructs a APIResult from a (parsed) JSON hash
    def self.from_json(o)
      if o.nil?
        return nil
      else
        inst = new
        inst.init_jaxb_json_hash o
        return inst
      end
    end
  end

end

end

end

end

module Org

module Apache

module Lens

module Api

module Query

  # 
  class QueryPrepareHandle < Org::Apache::Lens::Api::Query::QuerySubmitResult 

    # (no documentation provided)
    attr_accessor :prepareHandleId

    # the json hash for this QueryPrepareHandle
    def to_jaxb_json_hash
      _h = super
      _h['prepareHandleId'] = prepareHandleId.to_jaxb_json_hash unless prepareHandleId.nil?
      return _h
    end

    #initializes this QueryPrepareHandle with a json hash
    def init_jaxb_json_hash(_o)
      super _o
      @prepareHandleId = String.from_json(_o['prepareHandleId']) unless _o['prepareHandleId'].nil?
    end

    # constructs a QueryPrepareHandle from a (parsed) JSON hash
    def self.from_json(o)
      if o.nil?
        return nil
      else
        inst = new
        inst.init_jaxb_json_hash o
        return inst
      end
    end
  end

end

end

end

end

end

module Org

module Apache

module Lens

module Api

module Query

  # 
  class PersistentQueryResult < Org::Apache::Lens::Api::Query::QueryResult 

    # (no documentation provided)
    attr_accessor :numRows
    # (no documentation provided)
    attr_accessor :persistedURI

    # the json hash for this PersistentQueryResult
    def to_jaxb_json_hash
      _h = super
      _h['numRows'] = numRows.to_jaxb_json_hash unless numRows.nil?
      _h['persistedURI'] = persistedURI.to_jaxb_json_hash unless persistedURI.nil?
      return _h
    end

    #initializes this PersistentQueryResult with a json hash
    def init_jaxb_json_hash(_o)
      super _o
      @numRows = Fixnum.from_json(_o['numRows']) unless _o['numRows'].nil?
      @persistedURI = String.from_json(_o['persistedURI']) unless _o['persistedURI'].nil?
    end

    # constructs a PersistentQueryResult from a (parsed) JSON hash
    def self.from_json(o)
      if o.nil?
        return nil
      else
        inst = new
        inst.init_jaxb_json_hash o
        return inst
      end
    end
  end

end

end

end

end

end

module Org

module Apache

module Lens

module Api

module Query

  # 
  class QueryHandle < Org::Apache::Lens::Api::Query::QuerySubmitResult 

    # (no documentation provided)
    attr_accessor :handleId

    # the json hash for this QueryHandle
    def to_jaxb_json_hash
      _h = super
      _h['handleId'] = handleId.to_jaxb_json_hash unless handleId.nil?
      return _h
    end

    #initializes this QueryHandle with a json hash
    def init_jaxb_json_hash(_o)
      super _o
      @handleId = String.from_json(_o['handleId']) unless _o['handleId'].nil?
    end

    # constructs a QueryHandle from a (parsed) JSON hash
    def self.from_json(o)
      if o.nil?
        return nil
      else
        inst = new
        inst.init_jaxb_json_hash o
        return inst
      end
    end
  end

end

end

end

end

end

module Org

module Apache

module Lens

module Api

module Result

  # 
  class QueryCostTO < Org::Apache::Lens::Api::Query::QuerySubmitResult 

    # (no documentation provided)
    attr_accessor :estimatedExecTimeMillis
    # (no documentation provided)
    attr_accessor :estimatedResourceUsage
    # (no documentation provided)
    attr_accessor :type

    # the json hash for this QueryCostTO
    def to_jaxb_json_hash
      _h = super
      _h['estimatedExecTimeMillis'] = estimatedExecTimeMillis.to_jaxb_json_hash unless estimatedExecTimeMillis.nil?
      _h['estimatedResourceUsage'] = estimatedResourceUsage.to_jaxb_json_hash unless estimatedResourceUsage.nil?
      _h['type'] = type.to_jaxb_json_hash unless type.nil?
      return _h
    end

    #initializes this QueryCostTO with a json hash
    def init_jaxb_json_hash(_o)
      super _o
      @estimatedExecTimeMillis = Bignum.from_json(_o['estimatedExecTimeMillis']) unless _o['estimatedExecTimeMillis'].nil?
      @estimatedResourceUsage = Float.from_json(_o['estimatedResourceUsage']) unless _o['estimatedResourceUsage'].nil?
      @type = String.from_json(_o['type']) unless _o['type'].nil?
    end

    # constructs a QueryCostTO from a (parsed) JSON hash
    def self.from_json(o)
      if o.nil?
        return nil
      else
        inst = new
        inst.init_jaxb_json_hash o
        return inst
      end
    end
  end

end

end

end

end

end

module Org

module Apache

module Lens

module Api

module Query

  # 
  class QueryHandleWithResultSet < Org::Apache::Lens::Api::Query::QuerySubmitResult 

    # (no documentation provided)
    attr_accessor :result
    # (no documentation provided)
    attr_accessor :status
    # (no documentation provided)
    attr_accessor :queryHandle

    # the json hash for this QueryHandleWithResultSet
    def to_jaxb_json_hash
      _h = super
      _h['result'] = result.to_jaxb_json_hash unless result.nil?
      _h['status'] = status.to_jaxb_json_hash unless status.nil?
      _h['queryHandle'] = queryHandle.to_jaxb_json_hash unless queryHandle.nil?
      return _h
    end

    #initializes this QueryHandleWithResultSet with a json hash
    def init_jaxb_json_hash(_o)
      super _o
      @result = Org::Apache::Lens::Api::Query::QueryResult.from_json(_o['result']) unless _o['result'].nil?
      @status = Org::Apache::Lens::Api::Query::QueryStatus.from_json(_o['status']) unless _o['status'].nil?
      @queryHandle = Org::Apache::Lens::Api::Query::QueryHandle.from_json(_o['queryHandle']) unless _o['queryHandle'].nil?
    end

    # constructs a QueryHandleWithResultSet from a (parsed) JSON hash
    def self.from_json(o)
      if o.nil?
        return nil
      else
        inst = new
        inst.init_jaxb_json_hash o
        return inst
      end
    end
  end

end

end

end

end

end

module Org

module Apache

module Lens

module Api

module Query

  # 
  class ResultColumnType

    # (no documentation provided)
    BOOLEAN = "BOOLEAN"

    # (no documentation provided)
    TINYINT = "TINYINT"

    # (no documentation provided)
    SMALLINT = "SMALLINT"

    # (no documentation provided)
    INT = "INT"

    # (no documentation provided)
    BIGINT = "BIGINT"

    # (no documentation provided)
    FLOAT = "FLOAT"

    # (no documentation provided)
    DOUBLE = "DOUBLE"

    # (no documentation provided)
    STRING = "STRING"

    # (no documentation provided)
    TIMESTAMP = "TIMESTAMP"

    # (no documentation provided)
    BINARY = "BINARY"

    # (no documentation provided)
    ARRAY = "ARRAY"

    # (no documentation provided)
    MAP = "MAP"

    # (no documentation provided)
    STRUCT = "STRUCT"

    # (no documentation provided)
    UNIONTYPE = "UNIONTYPE"

    # (no documentation provided)
    USER_DEFINED = "USER_DEFINED"

    # (no documentation provided)
    DECIMAL = "DECIMAL"

    # (no documentation provided)
    NULL = "NULL"

    # (no documentation provided)
    DATE = "DATE"

    # (no documentation provided)
    VARCHAR = "VARCHAR"

    # (no documentation provided)
    CHAR = "CHAR"
  end

end

end

end

end

end

module Org

module Apache

module Lens

module Api

module Query

  # 
  class Status

    # (no documentation provided)
    NEW = "NEW"

    # (no documentation provided)
    QUEUED = "QUEUED"

    # (no documentation provided)
    LAUNCHED = "LAUNCHED"

    # (no documentation provided)
    RUNNING = "RUNNING"

    # (no documentation provided)
    EXECUTED = "EXECUTED"

    # (no documentation provided)
    SUCCESSFUL = "SUCCESSFUL"

    # (no documentation provided)
    FAILED = "FAILED"

    # (no documentation provided)
    CANCELED = "CANCELED"

    # (no documentation provided)
    CLOSED = "CLOSED"
  end

end

end

end

end

end

module Org

module Apache

module Lens

module Api

module Query

  # 
  class QueryPlan < Org::Apache::Lens::Api::Query::QuerySubmitResult 

    # (no documentation provided)
    attr_accessor :error
    # (no documentation provided)
    attr_accessor :execMode
    # (no documentation provided)
    attr_accessor :scanMode
    # (no documentation provided)
    attr_accessor :errorMsg
    # (no documentation provided)
    attr_accessor :queryCost
    # (no documentation provided)
    attr_accessor :planString
    # (no documentation provided)
    attr_accessor :hasSubQuery
    # (no documentation provided)
    attr_accessor :tablesQueried
    # (no documentation provided)
    attr_accessor :prepareHandle

    # the json hash for this QueryPlan
    def to_jaxb_json_hash
      _h = super
      _h['error'] = error.to_jaxb_json_hash unless error.nil?
      _h['execMode'] = execMode.to_jaxb_json_hash unless execMode.nil?
      _h['scanMode'] = scanMode.to_jaxb_json_hash unless scanMode.nil?
      _h['errorMsg'] = errorMsg.to_jaxb_json_hash unless errorMsg.nil?
      _h['queryCost'] = queryCost.to_jaxb_json_hash unless queryCost.nil?
      _h['planString'] = planString.to_jaxb_json_hash unless planString.nil?
      _h['hasSubQuery'] = hasSubQuery.to_jaxb_json_hash unless hasSubQuery.nil?
      if !tablesQueried.nil?
        _ha = Array.new
        tablesQueried.each { | _item | _ha.push _item.to_jaxb_json_hash }
        _h['tablesQueried'] = _ha
      end
      _h['prepareHandle'] = prepareHandle.to_jaxb_json_hash unless prepareHandle.nil?
      return _h
    end

    #initializes this QueryPlan with a json hash
    def init_jaxb_json_hash(_o)
      super _o
      @error = Boolean.from_json(_o['error']) unless _o['error'].nil?
      @execMode = String.from_json(_o['execMode']) unless _o['execMode'].nil?
      @scanMode = String.from_json(_o['scanMode']) unless _o['scanMode'].nil?
      @errorMsg = String.from_json(_o['errorMsg']) unless _o['errorMsg'].nil?
      @queryCost = Org::Apache::Lens::Api::Result::QueryCostTO.from_json(_o['queryCost']) unless _o['queryCost'].nil?
      @planString = String.from_json(_o['planString']) unless _o['planString'].nil?
      @hasSubQuery = Boolean.from_json(_o['hasSubQuery']) unless _o['hasSubQuery'].nil?
      if !_o['tablesQueried'].nil?
        @tablesQueried = Array.new
        _oa = _o['tablesQueried']
        _oa.each { | _item | @tablesQueried.push String.from_json(_item) }
      end
      @prepareHandle = Org::Apache::Lens::Api::Query::QueryPrepareHandle.from_json(_o['prepareHandle']) unless _o['prepareHandle'].nil?
    end

    # constructs a QueryPlan from a (parsed) JSON hash
    def self.from_json(o)
      if o.nil?
        return nil
      else
        inst = new
        inst.init_jaxb_json_hash o
        return inst
      end
    end
  end

end

end

end

end

end

module Org

module Apache

module Lens

module Api

module Query

  # 
  class QueryCostType

    # (no documentation provided)
    LOW = "LOW"

    # (no documentation provided)
    MEDIUM = "MEDIUM"

    # (no documentation provided)
    HIGH = "HIGH"
  end

end

end

end

end

end

module Org

module Apache

module Lens

module Api

module Query

  # 
  class InMemoryQueryResult < Org::Apache::Lens::Api::Query::QueryResult 

    # (no documentation provided)
    attr_accessor :rows

    # the json hash for this InMemoryQueryResult
    def to_jaxb_json_hash
      _h = super
      if !rows.nil?
        _ha = Array.new
        rows.each { | _item | _ha.push _item.to_jaxb_json_hash }
        _h['rows'] = _ha
      end
      return _h
    end

    #initializes this InMemoryQueryResult with a json hash
    def init_jaxb_json_hash(_o)
      super _o
      if !_o['rows'].nil?
        @rows = Array.new
        _oa = _o['rows']
        _oa.each { | _item | @rows.push Org::Apache::Lens::Api::Query::ResultRow.from_json(_item) }
      end
    end

    # constructs a InMemoryQueryResult from a (parsed) JSON hash
    def self.from_json(o)
      if o.nil?
        return nil
      else
        inst = new
        inst.init_jaxb_json_hash o
        return inst
      end
    end
  end

end

end

end

end

end

module Org

module Apache

module Lens

module Api

  # 
  class Priority

    # (no documentation provided)
    VERY_HIGH = "VERY_HIGH"

    # (no documentation provided)
    HIGH = "HIGH"

    # (no documentation provided)
    NORMAL = "NORMAL"

    # (no documentation provided)
    LOW = "LOW"

    # (no documentation provided)
    VERY_LOW = "VERY_LOW"
  end

end

end

end

end

module Org

module Apache

module Lens

module Api

  # 
  class Status

    # (no documentation provided)
    SUCCEEDED = "SUCCEEDED"

    # (no documentation provided)
    PARTIAL = "PARTIAL"

    # (no documentation provided)
    FAILED = "FAILED"
  end

end

end

end

end