.class public Landroid/support/customtabs/PostMessageService;
.super Landroid/app/Service;


# instance fields
.field private j6:Landroid/support/customtabs/s$a;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/support/customtabs/t;

    invoke-direct {v0, p0}, Landroid/support/customtabs/t;-><init>(Landroid/support/customtabs/PostMessageService;)V

    iput-object v0, p0, Landroid/support/customtabs/PostMessageService;->j6:Landroid/support/customtabs/s$a;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    iget-object v0, p0, Landroid/support/customtabs/PostMessageService;->j6:Landroid/support/customtabs/s$a;

    return-object v0
.end method
