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
    .registers 3

    const-class v0, Lcom/aide/common/wa;

    const-wide v1, 0x3bba9afb8c831a91L  # 5.6339127697396754E-21

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x3ed819a58995a7a8L  # 5.745931184500669E-6

    :try_start_6
    sget-boolean v3, Lcom/aide/common/wa;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Lcom/aide/common/wa;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method public static j6(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    :try_start_0
    sget-boolean v0, Lcom/aide/common/wa;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x301a2055b493a444L  # -7.915001636784475E76

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_26

    :cond_d
    if-eqz p0, :cond_25

    :try_start_f
    invoke-static {p0}, Lcom/aide/common/j;->j6(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v0, Ljava/io/ObjectInputStream;

    invoke-direct {v0, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p0
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_21} :catch_24
    .catchall {:try_start_f .. :try_end_21} :catchall_26

    if-eqz p0, :cond_25

    return-object p0

    :catch_24
    move-exception p0

    :cond_25
    return-object p1

    :catchall_26
    move-exception v0

    sget-boolean v1, Lcom/aide/common/wa;->DW:Z

    if-eqz v1, :cond_37

    const-wide v2, -0x301a2055b493a444L  # -7.915001636784475E76

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_37
    throw v0
.end method

.method public static j6(Ljava/lang/Object;)Ljava/lang/String;
    .registers 6

    const-wide v0, 0xf79311df02c4263L

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Lcom/aide/common/wa;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_30

    :cond_d
    if-nez p0, :cond_10

    return-object v2

    :cond_10
    :try_start_10
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v4, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lcom/aide/common/j;->j6([B)[C

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([C)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2d} :catch_2e
    .catchall {:try_start_10 .. :try_end_2d} :catchall_30

    return-object v4

    :catch_2e
    move-exception p0

    return-object v2

    :catchall_30
    move-exception v3

    sget-boolean v4, Lcom/aide/common/wa;->DW:Z

    if-eqz v4, :cond_38

    invoke-static {v3, v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_38
    throw v3
.end method
