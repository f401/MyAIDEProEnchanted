.class Lcom/ndk/GradleNdk$100000005;
.super Ljava/lang/Object;
.source "GradleNdk.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ndk/GradleNdk$100000005;->val$text:Ljava/lang/String;

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

    .line 299
    invoke-static {}, Lcom/ndk/GradleNdk;->access$L1000000()Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/ndk/GradleNdk$100000005;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method
