.class Lcom/ndk/GradleNdk$100000001;
.super Ljava/lang/Object;
.source "GradleNdk.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final val$ac:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ndk/GradleNdk$100000001;->val$ac:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/ndk/GradleNdk$100000001;->val$ac:Landroid/app/Activity;

    invoke-static {v0}, Lcom/ndk/GradleNdk;->access$1000014(Landroid/app/Activity;)V

    return-void
.end method
