.class public Lcom/aide/common/wa;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
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


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, 0x3bba9afb8c831a91L    # 5.6339127697396754E-21

    const-class v0, Lcom/aide/common/wa;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, 0x3ed819a58995a7a8L    # 5.745931184500669E-6

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/common/wa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3ed819a58995a7a8L    # 5.745931184500669E-6

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/wa;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static j6(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    const-wide v2, -0x301a2055b493a444L    # -7.915001636784475E76

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/common/wa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x301a2055b493a444L    # -7.915001636784475E76

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    if-eqz p0, :cond_1

    :try_start_1
    invoke-static {p0}, Lcom/aide/common/j;->j6(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v0, Ljava/io/ObjectInputStream;

    invoke-direct {v0, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    if-eqz v0, :cond_1

    move-object p1, v0

    :cond_1
    :goto_0
    return-object p1

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/common/wa;->DW:Z

    if-eqz v0, :cond_2

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static j6(Ljava/lang/Object;)Ljava/lang/String;
    .registers 7

    const-wide v4, 0xf79311df02c4263L

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Lcom/aide/common/wa;->j6:Z

    if-eqz v1, :cond_0

    const-wide v2, 0xf79311df02c4263L

    const/4 v1, 0x0

    invoke-static {v2, v3, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    if-nez p0, :cond_1

    :goto_0
    return-object v0

    :cond_1
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lcom/aide/common/j;->j6([B)[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v2, Lcom/aide/common/wa;->DW:Z

    if-eqz v2, :cond_2

    invoke-static {v1, v4, v5, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1

    :catch_1
    move-exception v1

    goto :goto_0
.end method
