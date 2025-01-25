.class public Lcom/aide/common/Xa;
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

    const-class v0, Lcom/aide/common/Xa;

    const-wide v1, -0x9df8d49bb7a5ccbL

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x4834ac5cd26caf99L  # 7.034756512921763E39

    :try_start_6
    sget-boolean v3, Lcom/aide/common/Xa;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Lcom/aide/common/Xa;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method public static j6(Ljava/io/InputStream;[B)I
    .registers 9

    :try_start_0
    sget-boolean v0, Lcom/aide/common/Xa;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x67d606bf610d6771L  # -2.846463599569468E-192

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/aide/common/Xa;->j6(Ljava/io/InputStream;[BII)I

    move-result p0
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_14

    return p0

    :catchall_14
    move-exception v0

    sget-boolean v1, Lcom/aide/common/Xa;->DW:Z

    if-eqz v1, :cond_25

    const-wide v2, -0x67d606bf610d6771L  # -2.846463599569468E-192

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v0
.end method

.method public static j6(Ljava/io/InputStream;[BII)I
    .registers 13

    :try_start_0
    sget-boolean v0, Lcom/aide/common/Xa;->j6:Z

    if-eqz v0, :cond_19

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x22a848be5bb1285dL  # 9.957149793470631E-142

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    if-ge v0, p3, :cond_2e

    add-int v1, p2, v0

    sub-int v2, p3, v0

    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1
    :try_end_24
    .catchall {:try_start_0 .. :try_end_24} :catchall_2f

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2c

    if-lez v0, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 v0, -0x1

    :goto_2b
    return v0

    :cond_2c
    add-int/2addr v0, v1

    goto :goto_1a

    :cond_2e
    return v0

    :catchall_2f
    move-exception v0

    sget-boolean v1, Lcom/aide/common/Xa;->DW:Z

    if-eqz v1, :cond_4a

    const-wide v2, 0x22a848be5bb1285dL  # 9.957149793470631E-142

    const/4 v4, 0x0

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4a
    goto :goto_4c

    :goto_4b
    throw v0

    :goto_4c
    goto :goto_4b
.end method

.method public static j6(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x5244bbc28ad3c80L

    :try_start_6
    sget-boolean v3, Lcom/aide/common/Xa;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3}, Lcom/aide/common/Xa;->j6(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object p0
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_17

    return-object p0

    :catchall_17
    move-exception v3

    sget-boolean v4, Lcom/aide/common/Xa;->DW:Z

    if-eqz v4, :cond_1f

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v3
.end method

.method public static j6(Ljava/io/Reader;)Ljava/lang/String;
    .registers 10

    const/4 v0, 0x0

    const-wide v1, 0x9b24cc1a80c25b1L

    :try_start_6
    sget-boolean v3, Lcom/aide/common/Xa;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x2000

    new-array v6, v5, [C

    :goto_1b
    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7, v5}, Ljava/io/BufferedReader;->read([CII)I

    move-result v8

    if-lez v8, :cond_26

    invoke-virtual {v4, v6, v7, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_1b

    :cond_26
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_2b

    return-object p0

    :catchall_2b
    move-exception v3

    sget-boolean v4, Lcom/aide/common/Xa;->DW:Z

    if-eqz v4, :cond_33

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_33
    goto :goto_35

    :goto_34
    throw v3

    :goto_35
    goto :goto_34
.end method

.method public static j6(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 9

    :try_start_0
    sget-boolean v0, Lcom/aide/common/Xa;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x60c03b37d8353ee0L  # 1.1142473353194362E158

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/aide/common/Xa;->j6(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v0

    sget-boolean v1, Lcom/aide/common/Xa;->DW:Z

    if-eqz v1, :cond_23

    const-wide v2, 0x60c03b37d8353ee0L  # 1.1142473353194362E158

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_23
    throw v0
.end method

.method public static j6(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V
    .registers 11

    :try_start_0
    sget-boolean v0, Lcom/aide/common/Xa;->j6:Z

    if-eqz v0, :cond_14

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0x13f22e207fa22f45L

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    const/16 v0, 0x1000

    new-array v0, v0, [B
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_3d

    :goto_18
    :try_start_18
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_24

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_2f

    goto :goto_18

    :cond_24
    if-eqz p2, :cond_29

    :try_start_26
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_36

    :cond_29
    if-eqz p2, :cond_2e

    :try_start_2b
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_3d

    :cond_2e
    return-void

    :catchall_2f
    move-exception v0

    if-eqz p2, :cond_35

    :try_start_32
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_35
    throw v0
    :try_end_36
    .catchall {:try_start_32 .. :try_end_36} :catchall_36

    :catchall_36
    move-exception v0

    if-eqz p2, :cond_3c

    :try_start_39
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    :cond_3c
    throw v0
    :try_end_3d
    .catchall {:try_start_39 .. :try_end_3d} :catchall_3d

    :catchall_3d
    move-exception v0

    sget-boolean v1, Lcom/aide/common/Xa;->DW:Z

    if-eqz v1, :cond_53

    const-wide v2, 0x13f22e207fa22f45L

    const/4 v4, 0x0

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_53
    goto :goto_55

    :goto_54
    throw v0

    :goto_55
    goto :goto_54
.end method

.method public static j6(Ljava/io/Reader;Ljava/io/Writer;)V
    .registers 9

    :try_start_0
    sget-boolean v0, Lcom/aide/common/Xa;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x71e87e3d10cc9cf8L  # -8.81329852730997E-241

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const/16 v0, 0x1000

    new-array v0, v0, [C
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_2f

    :goto_11
    :try_start_11
    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1d

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/Writer;->write([CII)V
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_26

    goto :goto_11

    :cond_1d
    :try_start_1d
    invoke-virtual {p0}, Ljava/io/Reader;->close()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_24

    :try_start_20
    invoke-virtual {p1}, Ljava/io/Writer;->close()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_2f

    return-void

    :catchall_24
    move-exception v0

    goto :goto_2b

    :catchall_26
    move-exception v0

    :try_start_27
    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    throw v0
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_24

    :goto_2b
    :try_start_2b
    invoke-virtual {p1}, Ljava/io/Writer;->close()V

    throw v0
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_2f

    :catchall_2f
    move-exception v0

    sget-boolean v1, Lcom/aide/common/Xa;->DW:Z

    if-eqz v1, :cond_40

    const-wide v2, -0x71e87e3d10cc9cf8L  # -8.81329852730997E-241

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_40
    goto :goto_42

    :goto_41
    throw v0

    :goto_42
    goto :goto_41
.end method

.method public static j6(Ljava/io/InputStream;Ljava/io/InputStream;)Z
    .registers 9

    :try_start_0
    sget-boolean v0, Lcom/aide/common/Xa;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x364a6a7179b17850L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_4b

    :cond_d
    const/16 v0, 0x2000

    :try_start_f
    new-array v1, v0, [B

    new-array v0, v0, [B

    :cond_13
    invoke-static {p0, v1}, Lcom/aide/common/Xa;->j6(Ljava/io/InputStream;[B)I

    move-result v2

    invoke-static {p1, v0}, Lcom/aide/common/Xa;->j6(Ljava/io/InputStream;[B)I

    move-result v3
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_43

    const/4 v4, 0x0

    if-eq v2, v3, :cond_25

    :try_start_1e
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return v4

    :cond_25
    const/4 v3, -0x1

    if-ne v2, v3, :cond_30

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2e
    .catchall {:try_start_1e .. :try_end_2e} :catchall_4b

    const/4 p0, 0x1

    return p0

    :cond_30
    const/4 v3, 0x0

    :goto_31
    if-ge v3, v2, :cond_13

    aget-byte v5, v1, v3

    aget-byte v6, v0, v3

    if-eq v5, v6, :cond_40

    :try_start_39
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return v4

    :cond_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    :catchall_43
    move-exception v0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_4b
    .catchall {:try_start_39 .. :try_end_4b} :catchall_4b

    :catchall_4b
    move-exception v0

    sget-boolean v1, Lcom/aide/common/Xa;->DW:Z

    if-eqz v1, :cond_5c

    const-wide v2, -0x364a6a7179b17850L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5c
    goto :goto_5e

    :goto_5d
    throw v0

    :goto_5e
    goto :goto_5d
.end method
