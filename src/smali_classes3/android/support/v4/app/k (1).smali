.class Landroid/support/v4/app/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/Fragment;->lp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final j6:Landroid/support/v4/app/Fragment;


# direct methods
.method constructor <init>(Landroid/support/v4/app/Fragment;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/app/k;->j6:Landroid/support/v4/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/k;->j6:Landroid/support/v4/app/Fragment;

    invoke-static {v0}, Landroid/support/v4/app/Fragment;->j6(Landroid/support/v4/app/Fragment;)V

    return-void
.end method
