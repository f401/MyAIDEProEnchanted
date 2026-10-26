.class public Lcom/appfour/backbone/api/objects/UserNotification;
.super Ljava/lang/Object;


# instance fields
.field private final context:Landroid/content/Context;

.field private final extras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final group:Ljava/lang/String;

.field private final id:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/appfour/backbone/api/objects/UserNotification;->extras:Ljava/util/Map;

    iput-object p1, p0, Lcom/appfour/backbone/api/objects/UserNotification;->context:Landroid/content/Context;

    iput p2, p0, Lcom/appfour/backbone/api/objects/UserNotification;->id:I

    iput-object p3, p0, Lcom/appfour/backbone/api/objects/UserNotification;->group:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBooleanExtra(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/appfour/backbone/api/objects/UserNotification;->extras:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getExtras()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/appfour/backbone/api/objects/UserNotification;->extras:Ljava/util/Map;

    return-object v0
.end method

.method public getGroup()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appfour/backbone/api/objects/UserNotification;->group:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/appfour/backbone/api/objects/UserNotification;->id:I

    return v0
.end method

.method public getIntExtra(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/appfour/backbone/api/objects/UserNotification;->extras:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appfour/backbone/api/objects/UserNotification;->extras:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public hasExtra(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/appfour/backbone/api/objects/UserNotification;->extras:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/appfour/backbone/api/runtime/b;->j6()Lcom/appfour/backbone/api/runtime/a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/appfour/backbone/api/runtime/a;->DW(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
