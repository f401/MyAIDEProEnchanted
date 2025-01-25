.class public Labcd/sj;
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

    const-class v0, Labcd/sj;

    const-wide v1, 0x129078d53742c2ebL  # 2.916416784179889E-219

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x2f2046dc1028f30cL

    :try_start_6
    sget-boolean v3, Labcd/sj;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/sj;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method public static DW(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x1320831aeeafb60dL

    :try_start_6
    sget-boolean v3, Labcd/sj;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".html"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_28

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".htm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0
    :try_end_23
    .catchall {:try_start_6 .. :try_end_23} :catchall_2a

    if-eqz p0, :cond_26

    goto :goto_28

    :cond_26
    const/4 p0, 0x0

    goto :goto_29

    :cond_28
    :goto_28
    const/4 p0, 0x1

    :goto_29
    return p0

    :catchall_2a
    move-exception v3

    sget-boolean v4, Labcd/sj;->DW:Z

    if-eqz v4, :cond_32

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_32
    throw v3
.end method

.method public static FH(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x52685b6ed22d24c3L  # 9.69070521102163E88

    :try_start_6
    sget-boolean v3, Labcd/sj;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {p0}, Labcd/sj;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_21

    invoke-static {p0}, Labcd/sj;->Zo(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_21

    invoke-static {p0}, Labcd/sj;->Hw(Ljava/lang/String;)Z

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

    sget-boolean v4, Labcd/sj;->DW:Z

    if-eqz v4, :cond_2b

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v3
.end method

.method private static Hw(Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x5ec8560c815adcdfL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0xc67d69c4c40b4c8L

    :try_start_6
    sget-boolean v3, Labcd/sj;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const-string v3, "www"

    invoke-static {p0}, Labcd/FileSystemUtils;->tp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    const-string v3, "assets"

    invoke-static {p0}, Labcd/FileSystemUtils;->EQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Labcd/FileSystemUtils;->tp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_2d

    if-eqz p0, :cond_2b

    const/4 p0, 0x1

    goto :goto_2c

    :cond_2b
    const/4 p0, 0x0

    :goto_2c
    return p0

    :catchall_2d
    move-exception v3

    sget-boolean v4, Labcd/sj;->DW:Z

    if-eqz v4, :cond_35

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_35
    throw v3
.end method

.method private static Zo(Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x522f6a0b0a42123cL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x17295757d9afae4fL  # -1.0586060940465744E197

    :try_start_6
    sget-boolean v3, Labcd/sj;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const-string v3, "www"

    invoke-static {p0}, Labcd/FileSystemUtils;->tp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-static {p0}, Labcd/FileSystemUtils;->EQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Labcd/sj;->v5(Ljava/lang/String;)Z

    move-result p0
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_27

    if-eqz p0, :cond_25

    const/4 p0, 0x1

    goto :goto_26

    :cond_25
    const/4 p0, 0x0

    :goto_26
    return p0

    :catchall_27
    move-exception v3

    sget-boolean v4, Labcd/sj;->DW:Z

    if-eqz v4, :cond_2f

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2f
    throw v3
.end method

.method public static j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string v0, "/index.htm"

    const-string v1, "/index.html"

    const-wide v2, -0x3ec3d0b247faca25L  # -1847117.718829504

    const/4 v4, 0x0

    :try_start_a
    sget-boolean v5, Labcd/sj;->j6:Z

    if-eqz v5, :cond_11

    invoke-static {v2, v3, v4, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Labcd/FileSystemUtils;->Hw(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_36

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Labcd/FileSystemUtils;->Hw(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_5a
    .catchall {:try_start_a .. :try_end_5a} :catchall_5c

    return-object p0

    :cond_5b
    return-object v4

    :catchall_5c
    move-exception v0

    sget-boolean v1, Labcd/sj;->DW:Z

    if-eqz v1, :cond_64

    invoke-static {v0, v2, v3, v4, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_64
    throw v0
.end method

.method private static v5(Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x5f1d2b44f898bfb8L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x4ae2877e5e7e4b5fL  # -7.69221892644067E-53

    :try_start_6
    sget-boolean v3, Labcd/sj;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/www"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Labcd/FileSystemUtils;->Hw(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/.cordova"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Labcd/FileSystemUtils;->Hw(Ljava/lang/String;)Z

    move-result p0
    :try_end_39
    .catchall {:try_start_6 .. :try_end_39} :catchall_3f

    if-eqz p0, :cond_3d

    const/4 p0, 0x1

    goto :goto_3e

    :cond_3d
    const/4 p0, 0x0

    :goto_3e
    return p0

    :catchall_3f
    move-exception v3

    sget-boolean v4, Labcd/sj;->DW:Z

    if-eqz v4, :cond_47

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_47
    throw v3
.end method
