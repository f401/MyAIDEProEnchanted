.class Landroid/support/v4/widget/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final j6:Landroid/support/v4/widget/w;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/w;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/widget/v;->j6:Landroid/support/v4/widget/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/widget/v;->j6:Landroid/support/v4/widget/w;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/w;->FH(I)V

    return-void
.end method
