<Serializable()> Public Class Player
    Private _height As Int32
    Private _position As String
    Private _sport As String
    Private _shirt_number As Int32
    Private _agent As String
    Private _market_value As Int32
    Private _team_status As String
    Private _internal_id As Int32
    Private _internal_role As String
    Private _citizen_card As Int32


    Property Height() As Int32

        Get
            Height = _height
        End Get
        Set(ByVal value As Int32)
            _height = value
        End Set
    End Property

    Property Position() As String
        Get
            Position = _position
        End Get
        Set(ByVal value As String)
            _position = value
        End Set
    End Property

    Property Sport() As String
        Get
            Sport = _sport
        End Get
        Set(value As String)
            _sport = value
        End Set
    End Property

    Property ShirtNumber() As String
        Get
            ShirtNumber = _shirt_number
        End Get
        Set(value As String)
            _shirt_number = value
        End Set
    End Property

    Property Agent() As String
        Get
            Agent = _agent
        End Get
        Set(value As String)
            _agent = value
        End Set
    End Property

    Property MarketValue() As Int32
        Get
            MarketValue = _market_value
        End Get
        Set(value As Int32)
            _market_value = value
        End Set
    End Property

    Property TeamStatus() As String
        Get
            TeamStatus = _team_status
        End Get
        Set(value As String)
            _team_status = value
        End Set
    End Property

    Property InternalID() As Int32
        Get
            InternalID = _internal_id
        End Get
        Set(value As Int32)
            _internal_id = value
        End Set
    End Property

    Property InternalRole() As String
        Get
            InternalRole = _internal_role
        End Get
        Set(value As String)
            _internal_role = value
        End Set
    End Property

    Property CitizenCard() As Int32
        Get
            CitizenCard = _citizen_card
        End Get
        Set(value As Int32)
            _citizen_card = value
        End Set
    End Property
End Class
