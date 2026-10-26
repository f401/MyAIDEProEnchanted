.class public Lcom/appfour/backbone/api/objects/UserLaunchAction;
.super Ljava/lang/Object;


# instance fields
.field private final activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appfour/backbone/api/objects/UserLaunchAction;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/appfour/backbone/api/objects/UserLaunchAction;->activity:Landroid/app/Activity;

    return-object v0
.end method
