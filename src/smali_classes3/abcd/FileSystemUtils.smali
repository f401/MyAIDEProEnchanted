.class public Labcd/FileSystemUtils;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static FH:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static Hw:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Labcd/Dc;
    .annotation runtime Labcd/ru;
        field = 0x4b427e73adc0c0b3L
    .end annotation
.end field

.field private static mContext:Landroid/content/Context;
    .annotation runtime Labcd/ru;
        field = -0x772db93f9673cf3L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x11c856fda034e83cL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x7c3ecb1a043480L

    :try_start_6
    const-class v3, Labcd/FileSystemUtils;

    const-wide v4, 0x18179e4bf6765ca1L

    invoke-static {v3, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v3, Labcd/FileSystemUtils;->FH:Z

    if-eqz v3, :cond_17

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    new-instance v3, Labcd/Dc;

    invoke-direct {v3}, Labcd/Dc;-><init>()V

    sput-object v3, Labcd/FileSystemUtils;->j6:Labcd/Dc;
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception v3

    sget-boolean v4, Labcd/FileSystemUtils;->Hw:Z

    if-eqz v4, :cond_27

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_27
    throw v3
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x2fedffb355972cdL

    :try_start_6
    sget-boolean v3, Labcd/FileSystemUtils;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/FileSystemUtils;->Hw:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method private static BT(Ljava/lang/String;)Ljava/io/Reader;
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x57694f89d5bc3ca0L
    .end annotation

    const-wide v0, 0x2cd188d733100119L  # 8.406119601689159E-93

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Labcd/FileSystemUtils;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {p0}, Labcd/FileSystemUtils;->er(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Labcd/FileSystemUtils;->yS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Labcd/Ul;

    sget-object v6, Labcd/FileSystemUtils;->j6:Labcd/Dc;

    invoke-virtual {v6, v3, v4, v2}, Labcd/Dc;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v3

    invoke-direct {v5, v3}, Labcd/Ul;-><init>(Ljava/io/Reader;)V
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_21

    return-object v5

    :catchall_21
    move-exception v3

    sget-boolean v4, Labcd/FileSystemUtils;->Hw:Z

    if-eqz v4, :cond_29

    invoke-static {v3, v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_29
    throw v3
.end method

.method public static DW(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    :try_start_0
    sget-boolean v0, Labcd/FileSystemUtils;->FH:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    const-wide v2, -0x4743e60ed992ce63L  # -2.1141095431089116E-35

    invoke-static {v2, v3, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {p0}, Labcd/FileSystemUtils;->EQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1e

    invoke-static {p0}, Labcd/FileSystemUtils;->tp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1f

    if-eqz v0, :cond_d

    return-object p0

    :cond_1e
    return-object v1

    :catchall_1f
    move-exception v0

    move-object v5, p0

    sget-boolean p0, Labcd/FileSystemUtils;->Hw:Z

    if-eqz p0, :cond_30

    const-wide v2, -0x4743e60ed992ce63L  # -2.1141095431089116E-35

    const/4 v4, 0x0

    move-object v1, v0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    goto :goto_32

    :goto_31
    throw v0

    :goto_32
    goto :goto_31
.end method

.method public static EQ(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, "/"

    const-wide v1, 0x4022ecb995f787cL

    const/4 v3, 0x0

    :try_start_8
    sget-boolean v4, Labcd/FileSystemUtils;->FH:Z

    if-eqz v4, :cond_f

    invoke-static {v1, v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_16

    return-object v3

    :cond_16
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    return-object v3

    :cond_1d
    const/16 v4, 0x2f

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    if-nez v4, :cond_26

    return-object v0

    :cond_26
    const/4 v0, -0x1

    if-ne v4, v0, :cond_2a

    return-object v3

    :cond_2a
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_30

    return-object p0

    :catchall_30
    move-exception v0

    sget-boolean v4, Labcd/FileSystemUtils;->Hw:Z

    if-eqz v4, :cond_38

    invoke-static {v0, v1, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_38
    throw v0
.end method

.method public static FH(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    :try_start_0
    sget-boolean v0, Labcd/FileSystemUtils;->FH:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x23756eed8d282275L  # 7.19931681237541E-138

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_25

    if-eqz v0, :cond_16

    const-string p0, ""

    return-object p0

    :cond_16
    :try_start_16
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_24
    .catchall {:try_start_16 .. :try_end_24} :catchall_25

    return-object p0

    :catchall_25
    move-exception v0

    sget-boolean v1, Labcd/FileSystemUtils;->Hw:Z

    if-eqz v1, :cond_36

    const-wide v2, 0x23756eed8d282275L  # 7.19931681237541E-138

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_36
    throw v0
.end method

.method public static Hw(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x132982a1b80e5c0L

    :try_start_6
    sget-boolean v3, Labcd/FileSystemUtils;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_21

    invoke-static {p0}, Labcd/FileSystemUtils;->XL(Ljava/lang/String;)Z

    move-result p0
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_23

    if-eqz p0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 p0, 0x1

    :goto_22
    return p0

    :catchall_23
    move-exception v3

    sget-boolean v4, Labcd/FileSystemUtils;->Hw:Z

    if-eqz v4, :cond_2b

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v3
.end method

.method public static Hw(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    :try_start_0
    sget-boolean v0, Labcd/FileSystemUtils;->FH:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x31df538dbda5c765L  # -2.247599321727619E68

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    if-eqz p1, :cond_2e

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0
    :try_end_2a
    .catchall {:try_start_0 .. :try_end_2a} :catchall_30

    if-eqz p0, :cond_2e

    :cond_2c
    const/4 p0, 0x1

    goto :goto_2f

    :cond_2e
    const/4 p0, 0x0

    :goto_2f
    return p0

    :catchall_30
    move-exception v0

    sget-boolean v1, Labcd/FileSystemUtils;->Hw:Z

    if-eqz v1, :cond_41

    const-wide v2, -0x31df538dbda5c765L  # -2.247599321727619E68

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_41
    throw v0
.end method

.method public static J0(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x1cb12aa0664a089L  # -8.759203283833738E299

    :try_start_6
    sget-boolean v3, Labcd/FileSystemUtils;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {p0}, Labcd/FileSystemUtils;->isDir(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1c

    invoke-static {p0}, Labcd/FileSystemUtils;->Ws(Ljava/lang/String;)Z

    move-result p0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_1e

    if-eqz p0, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 p0, 0x0

    goto :goto_1d

    :cond_1c
    :goto_1c
    const/4 p0, 0x1

    :goto_1d
    return p0

    :catchall_1e
    move-exception v3

    sget-boolean v4, Labcd/FileSystemUtils;->Hw:Z

    if-eqz v4, :cond_26

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v3
.end method

.method public static J8(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x7d119f790c28cb88L  # -1.486346214412775E-294

    :try_start_6
    sget-boolean v3, Labcd/FileSystemUtils;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {p0}, Labcd/FileSystemUtils;->isFileButNotJarOrZip(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_19

    invoke-static {p0}, Labcd/FileSystemUtils;->XL(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    :cond_19
    invoke-static {p0}, Labcd/FileSystemUtils;->isZipOrJarAchieve(Ljava/lang/String;)Z

    move-result p0
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_23

    if-nez p0, :cond_21

    const/4 p0, 0x1

    goto :goto_22

    :cond_21
    const/4 p0, 0x0

    :goto_22
    return p0

    :catchall_23
    move-exception v3

    sget-boolean v4, Labcd/FileSystemUtils;->Hw:Z

    if-eqz v4, :cond_2b

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v3
.end method

.method public static QX(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x1df2aeb7f2e617f7L  # -2.1103508904326286E164

    :try_start_6
    sget-boolean v3, Labcd/FileSystemUtils;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {p0}, Labcd/FileSystemUtils;->er(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_17

    if-eqz p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return p0

    :catchall_17
    move-exception v3

    sget-boolean v4, Labcd/FileSystemUtils;->Hw:Z

    if-eqz v4, :cond_1f

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v3
.end method

.method public static U2(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x399dc7d8fce82541L  # -1.1547881988166842E31

    :try_start_6
    sget-boolean v3, Labcd/FileSystemUtils;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-static {p0}, Labcd/FileSystemUtils;->EQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Labcd/FileSystemUtils;->isDir(Ljava/lang/String;)Z

    move-result p0
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_23

    if-eqz p0, :cond_21

    const/4 p0, 0x1

    goto :goto_22

    :cond_21
    const/4 p0, 0x0

    :goto_22
    return p0

    :catchall_23
    move-exception v3

    sget-boolean v4, Labcd/FileSystemUtils;->Hw:Z

    if-eqz v4, :cond_2b

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v3
.end method

.method public static VH(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    const-wide v1, 0xac949fe50f85737L

    :try_start_6
    sget-boolean v3, Labcd/FileSystemUtils;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {p0}, Labcd/FileSystemUtils;->tp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_27

    if-gez v4, :cond_1c

    const-string p0, ""

    return-object p0

    :cond_1c
    add-int/lit8 v4, v4, 0x1

    :try_start_1e
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_27

    return-object p0

    :catchall_27
    move-exception v3

    sget-boolean v4, Labcd/FileSystemUtils;->Hw:Z

    if-eqz v4, :cond_2f

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2f
    throw v3
.end method

.method public static VH(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    :try_start_0
    sget-boolean v0, Labcd/FileSystemUtils;->FH:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x220383a9f2e57e19L  # -5.5578222083699775E144

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {p0, p1}, Labcd/FileSystemUtils;->u7(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_12

    return-object p0

    :catchall_12
    move-exception v0

    sget-boolean v1, Labcd/FileSystemUtils;->Hw:Z

    if-eqz v1, :cond_23

    const-wide v2, -0x220383a9f2e57e19L  # -5.5578222083699775E144

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_23
    throw v0
.end method

.method public static Ws(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x404cff864cfa6720L  # -0.07422600384379363

    :try_start_6
    sget-boolean v3, Labcd/FileSystemUtils;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {p0}, Labcd/FileSystemUtils;->er(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1d

    sget-object v3, Labcd/FileSystemUtils;->j6:Labcd/Dc;

    invoke-virtual {v3, p0}, Labcd/Dc;->FH(Ljava/lang/String;)Z

    move-result p0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_1f

    if-nez p0, :cond_1d

    const/4 p0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x0

    :goto_1e
    return p0

    :catchall_1f
    move-exception v3

    sget-boolean v4, Labcd/FileSystemUtils;->Hw:Z

    if-eqz v4, :cond_27

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_27
    throw v3
.end method

.method public static XL(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x315c5d2d2b1b4fe3L  # -6.77614475547892E70

    :try_start_6
    sget-boolean v3, Labcd/FileSystemUtils;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {p0}, Labcd/FileSystemUtils;->er(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1d

    sget-object v3, Labcd/FileSystemUtils;->j6:Labcd/Dc;

    invoke-virtual {v3, p0}, Labcd/Dc;->FH(Ljava/lang/String;)Z

    move-result p0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_1f

    if-eqz p0, :cond_1d

    const/4 p0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x0

    :goto_1e
    return p0

    :catchall_1f
    move-exception v3

    sget-boolean v4, Labcd/FileSystemUtils;->Hw:Z

    if-eqz v4, :cond_27

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_27
    throw v3
.end method

.method public static Zo()Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    const-wide v1, 0x7c009e1d1ec2d898L  # 2.0243005048866518E289

    :try_start_6
    sget-boolean v3, Labcd/FileSystemUtils;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    sget-object v3, Labcd/FileSystemUtils;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/support/v4/content/b;->DW(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_18

    return-object v0

    :catchall_18
    move-exception v3

    sget-boolean v4, Labcd/FileSystemUtils;->Hw:Z

    if-eqz v4, :cond_20

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_20
    throw v3
.end method

.method public static Zo(Ljava/lang/String;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "/"

    const/4 v1, 0x0

    const-wide v2, -0x2115a4bf8b572350L

    :try_start_8
    sget-boolean v4, Labcd/FileSystemUtils;->FH:Z

    if-eqz v4, :cond_f

    invoke-static {v2, v3, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_f
    invoke-static {p0}, Labcd/FileSystemUtils;->QX(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-static {p0}, Labcd/FileSystemUtils;->er(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Labcd/FileSystemUtils;->yS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Labcd/FileSystemUtils;->j6:Labcd/Dc;

    invoke-virtual {v5, v0, v4}, Labcd/Dc;->j6(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_2a
    return-object v0

    :cond_2b
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_97

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Labcd/FileSystemUtils;->j6(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_59

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_59
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {}, Labcd/FileSystemUtils;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
    :try_end_67
    .catchall {:try_start_8 .. :try_end_67} :catchall_cf

    aget-object v4, v4, v5

    :try_start_69
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Labcd/FileSystemUtils;->j6(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_96

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_96

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v0

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_8f

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    :cond_8f
    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_96
    return-object v6

    :cond_97
    array-length v6, v4

    new-array v7, v6, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a1

    goto :goto_b2

    :cond_a1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_b2
    if-ge v5, v6, :cond_ca

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v4, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_b2

    :cond_ca
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0
    :try_end_ce
    .catchall {:try_start_69 .. :try_end_ce} :catchall_cf

    return-object p0

    :catchall_cf
    move-exception v0

    sget-boolean v4, Labcd/FileSystemUtils;->Hw:Z

    if-eqz v4, :cond_d7

    invoke-static {v0, v2, v3, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d7
    goto :goto_d9

    :goto_d8
    throw v0

    :goto_d9
    goto :goto_d8
.end method

.method public static createNewFileNotExists(Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, 0x14978e73a653a390L  # 1.791318902437699E-209

    :try_start_6
    sget-boolean v3, Labcd/FileSystemUtils;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_21

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    return-void

    :cond_21
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " already exists"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_38
    .catchall {:try_start_6 .. :try_end_38} :catchall_38

    :catchall_38
    move-exception v3

    sget-boolean v4, Labcd/FileSystemUtils;->Hw:Z

    if-eqz v4, :cond_40

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_40
    throw v3
.end method

.method private static deleteAll(Ljava/io/File;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x1565dddf4da21f19L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x381cfbcdde80b40L

    :try_start_6
    sget-boolean v3, Labcd/FileSystemUtils;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2a

    const/4 v4, 0x0

    :goto_1a
    array-length v5, v3

    if-ge v4, v5, :cond_2a

    new-instance v5, Ljava/io/File;

    aget-object v6, v3, v4

    invoke-direct {v5, p0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v5}, Labcd/FileSystemUtils;->deleteAll(Ljava/io/File;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    :cond_2a
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_31

    return-void

    :cond_31
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " could not be deleted"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_4c
    .catchall {:try_start_6 .. :try_end_4c} :catchall_4c

    :catchall_4c
    move-exception v3

    sget-boolean v4, Labcd/FileSystemUtils;->Hw:Z

    if-eqz v4, :cond_54

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_54
    goto :goto_56

    :goto_55
    throw v3

    :goto_56
    goto :goto_55
.end method

.method public static deleteAll(Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x4142b80e9a1df3L

    :try_start_6
    sget-boolean v3, Labcd/FileSystemUtils;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Labcd/FileSystemUtils;->deleteAll(Ljava/io/File;)V
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v3

    sget-boolean v4, Labcd/FileSystemUtils;->Hw:Z

    if-eqz v4, :cond_1e

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v3
.end method

.method private static er(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x3ea8831be167b5c0L
    .end annotation

    const-wide v0, 0x4593f1d28950aebbL  # 1.543140134777953E27

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Labcd/FileSystemUtils;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {p0}, Labcd/FileSystemUtils;->isZipOrJarAchieve(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    return-object p0

    :cond_14
    move-object v3, p0

    :cond_15
    invoke-static {v3}, Labcd/FileSystemUtils;->EQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1c

    return-object v2

    :cond_1c
    invoke-static {v3}, Labcd/FileSystemUtils;->isZipOrJarAchieve(Ljava/lang/String;)Z

    move-result v4
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_23

    if-eqz v4, :cond_15

    return-object v3

    :catchall_23
    move-exception v3

    sget-boolean v4, Labcd/FileSystemUtils;->Hw:Z

    if-eqz v4, :cond_2b

    invoke-static {v3, v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    goto :goto_2d

    :goto_2c
    throw v3

    :goto_2d
    goto :goto_2c
.end method

.method public static fileLength(Ljava/lang/String;)J
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x22342c41218da6adL  # -6.786664563812491E143

    :try_start_6
    sget-boolean v3, Labcd/FileSystemUtils;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v0
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_17

    return-wide v0

    :catchall_17
    move-exception v3

    sget-boolean v4, Labcd/FileSystemUtils;->Hw:Z

    if-eqz v4, :cond_1f

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v3
.end method

.method public static getAvaCacheDir()Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    const-wide v1, -0x420456fa9f681c53L  # -4.025094429577542E-10

    :try_start_6
    sget-boolean v3, Labcd/FileSystemUtils;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    sget-object v3, Labcd/FileSystemUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_1b

    sget-object v3, Labcd/FileSystemUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    :cond_1b
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_20

    return-object v0

    :catchall_20
    move-exception v3

    sget-boolean v4, Labcd/FileSystemUtils;->Hw:Z

    if-eqz v4, :cond_28

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_28
    throw v3
.end method

.method public static getContextFileProvider()Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    const-wide v1, 0x3e68ebbeff23da8L

    :try_start_6
    sget-boolean v3, Labcd/FileSystemUtils;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Labcd/FileSystemUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".fileprovider"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_25

    return-object v0

    :catchall_25
    move-exception v3

    sget-boolean v4, Labcd/FileSystemUtils;->Hw:Z

    if-eqz v4, :cond_2d

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2d
    throw v3
.end method

.method public static getExternalStorageDirectory()Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    const-wide v1, -0x316322f91205e7c8L  # -4.980194392383941E70

    :try_start_6
    sget-boolean v3, Labcd/FileSystemUtils;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_1f

    return-object v0

    :cond_1c
    const-string v0, "/mnt/sdcard"

    return-object v0

    :catchall_1f
    move-exception v3

    sget-boolean v4, Labcd/FileSystemUtils;->Hw:Z

    if-eqz v4, :cond_27

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_27
    throw v3
.end method

.method public static getInternalCacheDir()Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    const-wide v1, -0x3a62c1199dce7c00L  # -2.2627766603187675E27

    :try_start_6
    sget-boolean v3, Labcd/FileSystemUtils;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    sget-object v3, Labcd/FileSystemUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_18

    return-object v0

    :catchall_18
    move-exception v3

    sget-boolean v4, Labcd/FileSystemUtils;->Hw:Z

    if-eqz v4, :cond_20

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_20
    throw v3
.end method

.method public static getInternalFilesDir()Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    const-wide v1, 0x1636da893228ea91L

    :try_start_6
    sget-boolean v3, Labcd/FileSystemUtils;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    sget-object v3, Labcd/FileSystemUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_18

    return-object v0

    :catchall_18
    move-exception v3

    sget-boolean v4, Labcd/FileSystemUtils;->Hw:Z

    if-eqz v4, :cond_20

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_20
    throw v3
.end method

.method public static gn(Ljava/lang/String;)J
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x2a2a5c4c287f07b7L  # -3.1018798908636445E105

    :try_start_6
    sget-boolean v3, Labcd/FileSystemUtils;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v0
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_17

    return-wide v0

    :catchall_17
    move-exception v3

    sget-boolean v4, Labcd/FileSystemUtils;->Hw:Z

    if-eqz v4, :cond_1f

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v3
.end method

.method public static gn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    :try_start_0
    sget-boolean v0, Labcd/FileSystemUtils;->FH:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x11bb9fd000ccaca7L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {p0, p1}, Labcd/FileSystemUtils;->Hw(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_23

    return-object p0

    :cond_22
    return-object p1

    :catchall_23
    move-exception v0

    sget-boolean v1, Labcd/FileSystemUtils;->Hw:Z

    if-eqz v1, :cond_34

    const-wide v2, 0x11bb9fd000ccaca7L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_34
    throw v0
.end method

.method public static isDir(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x56f1c9844ff446d4L

    :try_start_6
    sget-boolean v3, Labcd/FileSystemUtils;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result p0
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_17

    return p0

    :catchall_17
    move-exception v3

    sget-boolean v4, Labcd/FileSystemUtils;->Hw:Z

    if-eqz v4, :cond_1f

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v3
.end method

.method public static isFileButNotJarOrZip(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x179ccb93ca35dddbL  # 6.163441487259989E-195

    :try_start_6
    sget-boolean v3, Labcd/FileSystemUtils;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-static {p0}, Labcd/FileSystemUtils;->isZipOrJarAchieve(Ljava/lang/String;)Z

    move-result p0
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_22

    if-nez p0, :cond_20

    const/4 p0, 0x1

    goto :goto_21

    :cond_20
    const/4 p0, 0x0

    :goto_21
    return p0

    :catchall_22
    move-exception v3

    sget-boolean v4, Labcd/FileSystemUtils;->Hw:Z

    if-eqz v4, :cond_2a

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2a
    throw v3
.end method

.method public static isFileSystemRoot(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0xbb39e40dd3f040L

    :try_start_6
    sget-boolean v3, Labcd/FileSystemUtils;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_14

    return p0

    :catchall_14
    move-exception v3

    sget-boolean v4, Labcd/FileSystemUtils;->Hw:Z

    if-eqz v4, :cond_1c

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw v3
.end method

.method private static isZipOrJarAchieve(Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = 0xb3f11f79885ab8L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x6fea129f9b5e891fL  # -3.530917320794935E-231

    :try_start_6
    sget-boolean v3, Labcd/FileSystemUtils;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_2a

    const-string v3, ".jar"

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_28

    const-string v3, ".zip"

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0
    :try_end_26
    .catchall {:try_start_6 .. :try_end_26} :catchall_2c

    if-eqz p0, :cond_2a

    :cond_28
    const/4 p0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 p0, 0x0

    :goto_2b
    return p0

    :catchall_2c
    move-exception v3

    sget-boolean v4, Labcd/FileSystemUtils;->Hw:Z

    if-eqz v4, :cond_34

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_34
    throw v3
.end method

.method public static varargs j6(Ljava/lang/String;I[Ljava/lang/String;)I
    .registers 11

    :try_start_0
    sget-boolean v0, Labcd/FileSystemUtils;->FH:Z

    if-eqz v0, :cond_14

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x21721d57eb0439L

    const/4 v3, 0x0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    invoke-static {p0}, Labcd/FileSystemUtils;->isDir(Ljava/lang/String;)Z

    move-result v0
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_51

    const/4 v1, 0x0

    if-eqz v0, :cond_39

    :try_start_1b
    invoke-static {p0}, Labcd/FileSystemUtils;->Zo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, p1, p2}, Labcd/FileSystemUtils;->j6(Ljava/lang/String;I[Ljava/lang/String;)I

    move-result v2
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_33} :catch_37
    .catchall {:try_start_1b .. :try_end_33} :catchall_51

    add-int/2addr v1, v2

    if-lt v1, p1, :cond_23

    goto :goto_38

    :catch_37
    move-exception p0

    :cond_38
    :goto_38
    return v1

    :cond_39
    :try_start_39
    invoke-static {p0}, Labcd/FileSystemUtils;->isFileButNotJarOrZip(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    array-length v0, p2

    const/4 v2, 0x0

    :goto_41
    if-ge v2, v0, :cond_50

    aget-object v3, p2, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_49
    .catchall {:try_start_39 .. :try_end_49} :catchall_51

    if-eqz v3, :cond_4d

    const/4 p0, 0x1

    return p0

    :cond_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    :cond_50
    return v1

    :catchall_51
    move-exception v0

    sget-boolean v1, Labcd/FileSystemUtils;->Hw:Z

    if-eqz v1, :cond_67

    const-wide v2, 0x21721d57eb0439L

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p0

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_67
    goto :goto_69

    :goto_68
    throw v0

    :goto_69
    goto :goto_68
.end method

.method static synthetic j6()Labcd/Dc;
    .registers 1

    sget-object v0, Labcd/FileSystemUtils;->j6:Labcd/Dc;

    return-object v0
.end method

.method public static j6(Ljava/io/File;)Ljava/lang/String;
    .registers 11

    const/4 v0, 0x0

    const-wide v1, 0x120650c827d592fL

    :try_start_6
    sget-boolean v3, Labcd/FileSystemUtils;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/|\\\\"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_7c

    const/4 v7, 0x0

    :goto_1e
    if-ge v7, v6, :cond_50

    aget-object v8, v5, v7

    :try_start_22
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_4d

    const-string v9, "."

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_31

    goto :goto_4d

    :cond_31
    const-string v9, ".."

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4a

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_40

    return-object v4

    :cond_40
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v3, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_4d

    :cond_4a
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4d
    :goto_4d
    add-int/lit8 v7, v7, 0x1

    goto :goto_1e

    :cond_50
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_59
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6
    :try_end_5d
    .catchall {:try_start_22 .. :try_end_5d} :catchall_7c

    const-string v7, "/"

    if-eqz v6, :cond_6e

    :try_start_61
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_59

    :cond_6e
    invoke-virtual {v4, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_77

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_77
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_7b
    .catchall {:try_start_61 .. :try_end_7b} :catchall_7c

    return-object p0

    :catchall_7c
    move-exception v3

    sget-boolean v4, Labcd/FileSystemUtils;->Hw:Z

    if-eqz v4, :cond_84

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_84
    goto :goto_86

    :goto_85
    throw v3

    :goto_86
    goto :goto_85
.end method

.method public static j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    :try_start_0
    sget-boolean v0, Labcd/FileSystemUtils;->FH:Z

    if-eqz v0, :cond_10

    const-wide v1, -0x2c5ffe051fdfae85L  # -6.678186123549857E94

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_2b
    .catchall {:try_start_0 .. :try_end_2b} :catchall_2c

    return-object p0

    :catchall_2c
    move-exception v0

    sget-boolean v1, Labcd/FileSystemUtils;->Hw:Z

    if-eqz v1, :cond_3e

    const-wide v2, -0x2c5ffe051fdfae85L  # -6.678186123549857E94

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3e
    throw v0
.end method

.method public static j6(Ljava/io/InputStream;Ljava/lang/String;Z)V
    .registers 11

    :try_start_0
    sget-boolean v0, Labcd/FileSystemUtils;->FH:Z

    if-eqz v0, :cond_14

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, -0x419863b4a7aa790L  # -6.844760712412849E288

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    :cond_19
    :goto_19
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    if-eqz v1, :cond_6c

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_46

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    goto :goto_19

    :cond_46
    if-nez p2, :cond_53

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_19

    :cond_53
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/aide/common/Xa;->j6(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6b
    .catchall {:try_start_0 .. :try_end_6b} :catchall_6d

    goto :goto_19

    :cond_6c
    return-void

    :catchall_6d
    move-exception v0

    sget-boolean v1, Labcd/FileSystemUtils;->Hw:Z

    if-eqz v1, :cond_83

    const-wide v2, -0x419863b4a7aa790L  # -6.844760712412849E288

    const/4 v4, 0x0

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_83
    goto :goto_85

    :goto_84
    throw v0

    :goto_85
    goto :goto_84
.end method

.method public static j6(Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, -0xa0b0e4a982316e5L  # -1.610124706652479E260

    :try_start_6
    sget-boolean v3, Labcd/FileSystemUtils;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-eqz v3, :cond_19

    return-void

    :cond_19
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " could not be created"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_30
    .catchall {:try_start_6 .. :try_end_30} :catchall_30

    :catchall_30
    move-exception v3

    sget-boolean v4, Labcd/FileSystemUtils;->Hw:Z

    if-eqz v4, :cond_38

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_38
    throw v3
.end method

.method public static j6(Ljava/lang/String;Ljava/io/Reader;)V
    .registers 9

    :try_start_0
    sget-boolean v0, Labcd/FileSystemUtils;->FH:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x38a30944e099c5L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    new-instance v0, Ljava/io/FileWriter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-static {p1}, Labcd/FileSystemUtils;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_1e

    return-void

    :catchall_1e
    move-exception v0

    sget-boolean v1, Labcd/FileSystemUtils;->Hw:Z

    if-eqz v1, :cond_2f

    const-wide v2, -0x38a30944e099c5L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2f
    throw v0
.end method

.method public static j6(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    :try_start_0
    sget-boolean v0, Labcd/FileSystemUtils;->FH:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x1c1becc59d11c838L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_24

    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    return-void

    :cond_24
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " already exists"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3b
    .catchall {:try_start_0 .. :try_end_3b} :catchall_3b

    :catchall_3b
    move-exception v0

    sget-boolean v1, Labcd/FileSystemUtils;->Hw:Z

    if-eqz v1, :cond_4c

    const-wide v2, 0x1c1becc59d11c838L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4c
    throw v0
.end method

.method public static j6(JJ)Z
    .registers 15

    :try_start_0
    sget-boolean v0, Labcd/FileSystemUtils;->FH:Z

    if-eqz v0, :cond_17

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p0, p1}, Ljava/lang/Long;-><init>(J)V

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p2, p3}, Ljava/lang/Long;-><init>(J)V

    const-wide v2, -0x15697def3bbc3229L  # -2.822768648721436E205

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_17
    sub-long v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_57

    const-wide/16 p2, 0x3e8

    const/4 v0, 0x1

    cmp-long v1, p0, p2

    if-gtz v1, :cond_25

    return v0

    :cond_25
    const-wide/32 v1, 0x36ee80

    rem-long v3, p0, v1

    const-wide/32 v5, 0x2ca1c80

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    cmp-long v10, v3, v7

    if-gtz v10, :cond_3b

    cmp-long p2, p0, v5

    if-gtz p2, :cond_39

    goto :goto_3a

    :cond_39
    const/4 v0, 0x0

    :goto_3a
    return v0

    :cond_3b
    sub-long v3, p0, p2

    rem-long/2addr v3, v1

    cmp-long v10, v3, v7

    if-nez v10, :cond_49

    cmp-long p2, p0, v5

    if-gtz p2, :cond_47

    goto :goto_48

    :cond_47
    const/4 v0, 0x0

    :goto_48
    return v0

    :cond_49
    add-long/2addr p2, p0

    rem-long/2addr p2, v1

    cmp-long v1, p2, v7

    if-nez v1, :cond_56

    cmp-long p2, p0, v5

    if-gtz p2, :cond_54

    goto :goto_55

    :cond_54
    const/4 v0, 0x0

    :goto_55
    return v0

    :cond_56
    return v9

    :catchall_57
    move-exception v0

    sget-boolean v1, Labcd/FileSystemUtils;->Hw:Z

    if-eqz v1, :cond_70

    const-wide v2, -0x15697def3bbc3229L  # -2.822768648721436E205

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, p0, p1}, Ljava/lang/Long;-><init>(J)V

    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, p2, p3}, Ljava/lang/Long;-><init>(J)V

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_70
    throw v0
.end method

.method public static lg(Ljava/lang/String;)Ljava/io/Reader;
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0xa1d2c0190abaa38L

    :try_start_6
    sget-boolean v3, Labcd/FileSystemUtils;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {p0}, Labcd/FileSystemUtils;->isFileButNotJarOrZip(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    return-object v3

    :cond_19
    invoke-static {p0}, Labcd/FileSystemUtils;->XL(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-static {p0}, Labcd/FileSystemUtils;->BT(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object p0

    return-object p0

    :cond_24
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception v3

    sget-boolean v4, Labcd/FileSystemUtils;->Hw:Z

    if-eqz v4, :cond_32

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_32
    throw v3
.end method

.method public static mkdirs(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x3279ae6ee26c60L

    :try_start_6
    sget-boolean v3, Labcd/FileSystemUtils;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result p0
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_17

    return p0

    :catchall_17
    move-exception v3

    sget-boolean v4, Labcd/FileSystemUtils;->Hw:Z

    if-eqz v4, :cond_1f

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v3
.end method

.method public static rN(Ljava/lang/String;)V
    .registers 10

    const/4 v0, 0x0

    const-wide v1, 0x318294283c3c36d1L  # 3.364861950935854E-70

    :try_start_6
    sget-boolean v3, Labcd/FileSystemUtils;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/io/File;->setLastModified(J)Z

    move-result v4

    if-nez v4, :cond_3f

    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v4, v3, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_6 .. :try_end_29} :catchall_40

    :try_start_29
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x1

    add-long/2addr v7, v5

    invoke-virtual {v4, v7, v8}, Ljava/io/RandomAccessFile;->setLength(J)V

    invoke-virtual {v4, v5, v6}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_36
    .catchall {:try_start_29 .. :try_end_36} :catchall_3a

    :try_start_36
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_3f

    :catchall_3a
    move-exception v3

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    throw v3
    :try_end_3f
    .catchall {:try_start_36 .. :try_end_3f} :catchall_40

    :cond_3f
    :goto_3f
    return-void

    :catchall_40
    move-exception v3

    sget-boolean v4, Labcd/FileSystemUtils;->Hw:Z

    if-eqz v4, :cond_48

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_48
    throw v3
.end method

.method public static readFully(Ljava/io/Reader;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    const-wide v1, -0x59cb276606541a0L  # -3.503870941457206E281

    :try_start_6
    sget-boolean v3, Labcd/FileSystemUtils;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const/16 v3, 0x1000

    new-array v3, v3, [C

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    :goto_16
    invoke-virtual {p0, v3}, Ljava/io/Reader;->read([C)I

    move-result v5

    if-lez v5, :cond_21

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6, v5}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_16

    :cond_21
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_25
    .catchall {:try_start_6 .. :try_end_25} :catchall_26

    return-object p0

    :catchall_26
    move-exception v3

    sget-boolean v4, Labcd/FileSystemUtils;->Hw:Z

    if-eqz v4, :cond_2e

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2e
    goto :goto_30

    :goto_2f
    throw v3

    :goto_30
    goto :goto_2f
.end method

.method public static renameTo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    :try_start_0
    sget-boolean v0, Labcd/FileSystemUtils;->FH:Z

    if-eqz v0, :cond_d

    const-wide v0, 0xccd83f75200440L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3b

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_24

    return-void

    :cond_24
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " could not be renamed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3b
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " already exists"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_52
    .catchall {:try_start_0 .. :try_end_52} :catchall_52

    :catchall_52
    move-exception v0

    sget-boolean v1, Labcd/FileSystemUtils;->Hw:Z

    if-eqz v1, :cond_63

    const-wide v2, 0xccd83f75200440L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_63
    throw v0
.end method

.method public static setContext(Landroid/content/Context;)V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x1be8da993514bba5L  # -1.4311835353942451E174

    :try_start_6
    sget-boolean v3, Labcd/FileSystemUtils;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    sput-object p0, Labcd/FileSystemUtils;->mContext:Landroid/content/Context;
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v3

    sget-boolean v4, Labcd/FileSystemUtils;->Hw:Z

    if-eqz v4, :cond_18

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    throw v3
.end method

.method public static tp(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x6b14356c5ed4107L

    :try_start_6
    sget-boolean v3, Labcd/FileSystemUtils;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const/16 v3, 0x2f

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_1a

    return-object p0

    :catchall_1a
    move-exception v3

    sget-boolean v4, Labcd/FileSystemUtils;->Hw:Z

    if-eqz v4, :cond_22

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v3
.end method

.method private static u7(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x2bc8de78b875a68L
    .end annotation

    const-string v0, "/"

    :try_start_2
    sget-boolean v1, Labcd/FileSystemUtils;->FH:Z

    if-eqz v1, :cond_f

    const-wide v1, 0x45a1e24164e3179bL  # 2.767385608527642E27

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_f
    const-string v1, "\\\\"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_34

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_34
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ".."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4b
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Labcd/FileSystemUtils;->j6(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0
    :try_end_5d
    .catchall {:try_start_2 .. :try_end_5d} :catchall_61

    if-eqz p0, :cond_60

    return-object v0

    :cond_60
    return-object p1

    :catchall_61
    move-exception v0

    sget-boolean v1, Labcd/FileSystemUtils;->Hw:Z

    if-eqz v1, :cond_72

    const-wide v2, 0x45a1e24164e3179bL  # 2.767385608527642E27

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_72
    throw v0
.end method

.method public static v5(Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x605d41e814a8974bL  # -2.730241065726453E-156

    :try_start_6
    sget-boolean v3, Labcd/FileSystemUtils;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Labcd/FileSystemUtils;->Zo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1a
    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Labcd/FileSystemUtils;->J0(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1a

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2f
    .catchall {:try_start_6 .. :try_end_2f} :catchall_31

    goto :goto_1a

    :cond_30
    return-object v3

    :catchall_31
    move-exception v3

    sget-boolean v4, Labcd/FileSystemUtils;->Hw:Z

    if-eqz v4, :cond_39

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_39
    goto :goto_3b

    :goto_3a
    throw v3

    :goto_3b
    goto :goto_3a
.end method

.method public static v5(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    :try_start_0
    sget-boolean v0, Labcd/FileSystemUtils;->FH:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x4c01ffecb4472143L  # -2.9870766492897907E-58

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_3b

    :cond_d
    const/4 v0, 0x0

    :try_start_e
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-static {p1}, Labcd/FileSystemUtils;->lg(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v2
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_16} :catch_39
    .catchall {:try_start_e .. :try_end_16} :catchall_3b

    :try_start_16
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_1b
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_30

    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4
    :try_end_29
    .catchall {:try_start_16 .. :try_end_29} :catchall_34

    if-eqz v4, :cond_1b

    :try_start_2b
    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    const/4 p0, 0x1

    return p0

    :cond_30
    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    return v0

    :catchall_34
    move-exception v1

    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    throw v1
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_39} :catch_39
    .catchall {:try_start_2b .. :try_end_39} :catchall_3b

    :catch_39
    move-exception p0

    return v0

    :catchall_3b
    move-exception v0

    sget-boolean v1, Labcd/FileSystemUtils;->Hw:Z

    if-eqz v1, :cond_4c

    const-wide v2, -0x4c01ffecb4472143L  # -2.9870766492897907E-58

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4c
    goto :goto_4e

    :goto_4d
    throw v0

    :goto_4e
    goto :goto_4d
.end method

.method public static we(Ljava/lang/String;)Z
    .registers 10

    const/4 v0, 0x0

    const-wide v1, 0xf0b7f1c5073bf91L

    :try_start_6
    sget-boolean v3, Labcd/FileSystemUtils;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {p0}, Labcd/FileSystemUtils;->XL(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_15

    return v4

    :cond_15
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_51

    const-wide/16 v7, 0x1f40

    cmp-long v3, v7, v5

    if-gez v3, :cond_27

    const/16 v3, 0x1f40

    goto :goto_28

    :cond_27
    long-to-int v3, v5

    :goto_28
    :try_start_28
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2d} :catch_4f
    .catchall {:try_start_28 .. :try_end_2d} :catchall_51

    :try_start_2d
    new-array v6, v3, [B

    new-instance v7, Ljava/io/DataInputStream;

    invoke-direct {v7, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v7, v6}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_37
    .catchall {:try_start_2d .. :try_end_37} :catchall_4a

    const/4 v7, 0x0

    :goto_38
    if-ge v7, v3, :cond_46

    aget-byte v8, v6, v7

    if-nez v8, :cond_43

    :try_start_3e
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    const/4 p0, 0x1

    return p0

    :cond_43
    add-int/lit8 v7, v7, 0x1

    goto :goto_38

    :cond_46
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    return v4

    :catchall_4a
    move-exception v3

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    throw v3
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_4f} :catch_4f
    .catchall {:try_start_3e .. :try_end_4f} :catchall_51

    :catch_4f
    move-exception p0

    return v4

    :catchall_51
    move-exception v3

    sget-boolean v4, Labcd/FileSystemUtils;->Hw:Z

    if-eqz v4, :cond_59

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_59
    goto :goto_5b

    :goto_5a
    throw v3

    :goto_5b
    goto :goto_5a
.end method

.method private static yS(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x2415f7659a6ceb35L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x3117748a41d0d000L  # 3.3187980871950107E-72

    :try_start_6
    sget-boolean v3, Labcd/FileSystemUtils;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {p0}, Labcd/FileSystemUtils;->er(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_2d

    if-ne v4, v5, :cond_1e

    const-string p0, ""

    return-object p0

    :cond_1e
    :try_start_1e
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_2c
    .catchall {:try_start_1e .. :try_end_2c} :catchall_2d

    return-object p0

    :catchall_2d
    move-exception v3

    sget-boolean v4, Labcd/FileSystemUtils;->Hw:Z

    if-eqz v4, :cond_35

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_35
    throw v3
.end method
