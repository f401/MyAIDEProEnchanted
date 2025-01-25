.class Labcd/za$d;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/za;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
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

    const-class v0, Labcd/za$d;

    const-wide v1, -0x3e80d923e88276a1L  # -3.2665025468148585E7

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x8bd6b98008dee64L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x329d04539cb9eddfL  # 6.888298687970315E-65

    :try_start_6
    sget-boolean v3, Labcd/za$d;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/za$d;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method synthetic constructor <init>(Labcd/wa;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, 0x3919070dcb0a7043L  # 1.2050329025049924E-33

    :try_start_6
    sget-boolean v3, Labcd/za$d;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Labcd/za$d;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/za$d;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    throw v3
.end method


# virtual methods
.method protected DW(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1f000d0e3904bfb4L
    .end annotation

    const-wide v0, -0xf8f48ec2e97259bL  # -4.1520906898280315E233

    :try_start_5
    sget-boolean v2, Labcd/za$d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Labcd/za$d;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method protected FH(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x1d4090685672fa7fL
    .end annotation

    const-wide v0, 0x1c922de714185efcL

    :try_start_5
    sget-boolean v2, Labcd/za$d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Labcd/za$d;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public Hw(Ljava/lang/String;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x268a5050447509e5L
    .end annotation

    const-string v0, "\\"

    const-wide v1, -0x7ceae6103dda98L

    :try_start_7
    sget-boolean v3, Labcd/za$d;->j6:Z

    if-eqz v3, :cond_e

    invoke-static {v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_e
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_30

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_30
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_41

    if-eqz p1, :cond_4c

    invoke-virtual {p0, p1}, Labcd/za$d;->j6(Ljava/lang/String;)V

    goto :goto_4c

    :cond_41
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_4c

    if-eqz p1, :cond_4c

    invoke-virtual {p0, p1}, Labcd/za$d;->FH(Ljava/lang/String;)V

    :cond_4c
    :goto_4c
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_75

    const/4 v3, 0x0

    :goto_53
    array-length v4, v0

    if-ge v3, v4, :cond_72

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Labcd/za$d;->Hw(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_53

    :cond_72
    invoke-virtual {p0, p1}, Labcd/za$d;->DW(Ljava/lang/String;)V
    :try_end_75
    .catchall {:try_start_7 .. :try_end_75} :catchall_76

    :cond_75
    return-void

    :catchall_76
    move-exception v0

    sget-boolean v3, Labcd/za$d;->DW:Z

    if-eqz v3, :cond_7e

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_7e
    goto :goto_80

    :goto_7f
    throw v0

    :goto_80
    goto :goto_7f
.end method

.method protected j6(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x15105f64da11150L
    .end annotation

    const-wide v0, -0x233b803ebeec451fL  # -7.62854295276984E138

    :try_start_5
    sget-boolean v2, Labcd/za$d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Labcd/za$d;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    throw v2
.end method
