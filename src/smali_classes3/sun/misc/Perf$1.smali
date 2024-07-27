.class Lsun/misc/Perf$1;
.super Ljava/lang/Object;
.source "Perf.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/misc/Perf;->attachImpl(Ljava/lang/String;II)Ljava/nio/ByteBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final $assertionsDisabled:Z


# instance fields
.field final this$0:Lsun/misc/Perf;

.field final val$b:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 286
    return-void
.end method

.method constructor <init>(Lsun/misc/Perf;Ljava/nio/ByteBuffer;)V
    .registers 3

    .line 286
    iput-object p1, p0, Lsun/misc/Perf$1;->this$0:Lsun/misc/Perf;

    iput-object p2, p0, Lsun/misc/Perf$1;->val$b:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 289
    :try_start_0
    invoke-static {}, Lsun/misc/Perf;->access$000()Lsun/misc/Perf;

    move-result-object v0

    iget-object v1, p0, Lsun/misc/Perf$1;->val$b:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lsun/misc/Perf;->access$100(Lsun/misc/Perf;Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    :goto_0
    return-void

    .line 291
    :catchall_0
    move-exception v0

    goto :goto_0
.end method
