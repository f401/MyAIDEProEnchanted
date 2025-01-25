.class Labcd/uI;
.super Ljava/io/PipedOutputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/vI$a;->DW()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final DW:Labcd/YK;

.field final j6:Labcd/vI$a;


# direct methods
.method constructor <init>(Labcd/vI$a;Ljava/io/PipedInputStream;Labcd/YK;)V
    .registers 4

    iput-object p1, p0, Labcd/uI;->j6:Labcd/vI$a;

    iput-object p3, p0, Labcd/uI;->DW:Labcd/YK;

    invoke-direct {p0, p2}, Ljava/io/PipedOutputStream;-><init>(Ljava/io/PipedInputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    invoke-super {p0}, Ljava/io/PipedOutputStream;->close()V

    :try_start_3
    iget-object v0, p0, Labcd/uI;->DW:Labcd/YK;

    iget-object v1, p0, Labcd/uI;->j6:Labcd/vI$a;

    invoke-static {v1}, Labcd/vI$a;->j6(Labcd/vI$a;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_11} :catch_12

    goto :goto_13

    :catch_12
    move-exception v0

    :goto_13
    return-void
.end method

.method public flush()V
    .registers 2

    invoke-super {p0}, Ljava/io/PipedOutputStream;->flush()V

    iget-object v0, p0, Labcd/uI;->DW:Labcd/YK;

    invoke-virtual {v0}, Labcd/YK;->j6()V

    return-void
.end method
