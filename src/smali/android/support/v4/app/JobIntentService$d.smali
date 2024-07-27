.class final Landroid/support/v4/app/JobIntentService$d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/app/JobIntentService$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/JobIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "d"
.end annotation


# instance fields
.field final DW:I

.field final FH:Landroid/support/v4/app/JobIntentService;

.field final j6:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/support/v4/app/JobIntentService;Landroid/content/Intent;I)V
    .registers 4

    iput-object p1, p0, Landroid/support/v4/app/JobIntentService$d;->FH:Landroid/support/v4/app/JobIntentService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/support/v4/app/JobIntentService$d;->j6:Landroid/content/Intent;

    iput p3, p0, Landroid/support/v4/app/JobIntentService$d;->DW:I

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/JobIntentService$d;->j6:Landroid/content/Intent;

    return-object v0
.end method

.method public j6()V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/JobIntentService$d;->FH:Landroid/support/v4/app/JobIntentService;

    iget v1, p0, Landroid/support/v4/app/JobIntentService$d;->DW:I

    invoke-virtual {v0, v1}, Landroid/app/Service;->stopSelf(I)V

    return-void
.end method
