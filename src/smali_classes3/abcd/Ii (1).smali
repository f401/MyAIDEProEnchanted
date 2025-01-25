.class Labcd/Ii;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Ji;->j6()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field final FH:Ljava/nio/channels/InterruptibleChannel;

.field final Hw:Labcd/Ji;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x3cc87a6d76bb9749L  # 6.7940744100194515E-16

    const-wide v2, -0x237fbca60c0fe40L  # -7.853340335380364E297

    const-class v4, Labcd/Ii;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/Ji;Ljava/nio/channels/InterruptibleChannel;)V
    .registers 3

    iput-object p1, p0, Labcd/Ii;->Hw:Labcd/Ji;

    iput-object p2, p0, Labcd/Ii;->FH:Ljava/nio/channels/InterruptibleChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x1d64d7e3ee964b25L
    .end annotation

    const-wide v0, -0xa7d2aad9dcef78dL

    :try_start_5
    sget-boolean v2, Labcd/Ii;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_14

    :cond_c
    :try_start_c
    iget-object v2, p0, Labcd/Ii;->FH:Ljava/nio/channels/InterruptibleChannel;

    invoke-interface {v2}, Ljava/nio/channels/InterruptibleChannel;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_11} :catch_12
    .catchall {:try_start_c .. :try_end_11} :catchall_14

    goto :goto_13

    :catch_12
    move-exception v0

    :goto_13
    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Labcd/Ii;->DW:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method
