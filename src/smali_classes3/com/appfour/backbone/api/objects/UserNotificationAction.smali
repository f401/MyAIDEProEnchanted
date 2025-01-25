.class public Lcom/appfour/backbone/api/objects/UserNotificationAction;
.super Ljava/lang/Object;


# static fields
.field public static final CONTENT_ACTION_NAME:Ljava/lang/String; = "__CONTENT"

.field public static final DELETE_ACTION_NAME:Ljava/lang/String; = "__DELETE"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final name:Ljava/lang/String;

.field private final notification:Lcom/appfour/backbone/api/objects/UserNotification;


# direct methods
.method public constructor <init>(Lcom/appfour/backbone/api/objects/UserNotification;Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appfour/backbone/api/objects/UserNotificationAction;->notification:Lcom/appfour/backbone/api/objects/UserNotification;

    iput-object p3, p0, Lcom/appfour/backbone/api/objects/UserNotificationAction;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/appfour/backbone/api/objects/UserNotificationAction;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/appfour/backbone/api/objects/UserNotificationAction;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/appfour/backbone/api/objects/UserNotificationAction;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNotification()Lcom/appfour/backbone/api/objects/UserNotification;
    .registers 2

    iget-object v0, p0, Lcom/appfour/backbone/api/objects/UserNotificationAction;->notification:Lcom/appfour/backbone/api/objects/UserNotification;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/appfour/backbone/api/runtime/b;->j6()Lcom/appfour/backbone/api/runtime/a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/appfour/backbone/api/runtime/a;->DW(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
