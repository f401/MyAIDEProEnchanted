.class Lcom/ndk/GradleNdk$100000002;
.super Ljava/lang/Object;
.source "GradleNdk.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final val$ac:Landroid/app/Activity;

.field private final val$tmpNdkPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ndk/GradleNdk$100000002;->val$ac:Landroid/app/Activity;

    iput-object p2, p0, Lcom/ndk/GradleNdk$100000002;->val$tmpNdkPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/ndk/GradleNdk$100000002;->val$ac:Landroid/app/Activity;

    iget-object v1, p0, Lcom/ndk/GradleNdk$100000002;->val$tmpNdkPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ndk/GradleNdk;->access$1000008(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
