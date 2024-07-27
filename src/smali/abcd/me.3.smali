.class public Labcd/me;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/la;


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


# instance fields
.field private final FH:Labcd/La;
    .annotation runtime Labcd/ru;
        field = 0x221d7f24f428b5e3L
    .end annotation
.end field

.field private final Hw:Labcd/ne;
    .annotation runtime Labcd/ru;
        field = 0x192d4e2a1b032c29L
    .end annotation
.end field

.field private Zo:Labcd/pe;
    .annotation runtime Labcd/ru;
        field = 0x173bccb3f678cd94L
    .end annotation
.end field

.field private v5:Labcd/vc;
    .annotation runtime Labcd/ru;
        field = 0x3ac6fc5801e48a5L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x549ec5abfaccb2c8L    # -9.845604548809882E-100

    const-class v0, Labcd/me;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/La;)V
    .registers 12

    const-wide v8, 0x3ac3cee50a5aec73L    # 1.2800737839513547E-25

    const/4 v7, 0x0

    :try_start_0
    sget-boolean v0, Labcd/me;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3ac3cee50a5aec73L    # 1.2800737839513547E-25

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/me;->FH:Labcd/La;

    new-instance v0, Labcd/ne;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Labcd/ne;-><init>(Labcd/La;Z)V

    iput-object v0, p0, Labcd/me;->Hw:Labcd/ne;

    if-eqz p1, :cond_1

    new-instance v0, Labcd/vc;

    iget-object v1, p1, Labcd/La;->j3:Labcd/Ga;

    iget-object v2, p1, Labcd/La;->rN:Labcd/Ca;

    iget-object v3, p0, Labcd/me;->Hw:Labcd/ne;

    new-instance v4, Labcd/oe;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Labcd/oe;-><init>(Ljava/io/Reader;)V

    invoke-direct {v0, v1, v2, v3, v4}, Labcd/vc;-><init>(Labcd/Ga;Labcd/Ca;Labcd/na;Labcd/uc;)V

    iput-object v0, p0, Labcd/me;->v5:Labcd/vc;

    new-instance v0, Labcd/pe;

    iget-object v1, p0, Labcd/me;->Hw:Labcd/ne;

    invoke-virtual {v1}, Labcd/ne;->Hw()Labcd/ga;

    move-result-object v1

    check-cast v1, Labcd/ie;

    iget-object v2, p1, Labcd/La;->j3:Labcd/Ga;

    iget-object v3, p1, Labcd/La;->rN:Labcd/Ca;

    iget-object v4, p1, Labcd/La;->a8:Labcd/Ba;

    iget-object v5, p0, Labcd/me;->Hw:Labcd/ne;

    invoke-virtual {v5}, Labcd/ne;->v5()Labcd/pa;

    move-result-object v5

    check-cast v5, Labcd/qe;

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Labcd/pe;-><init>(Labcd/ie;Labcd/Ga;Labcd/Ca;Labcd/Ba;Labcd/qe;Z)V

    iput-object v0, p0, Labcd/me;->Zo:Labcd/pe;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/me;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v8, v9, v7, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method


# virtual methods
.method public DW(Ljava/lang/String;)J
    .registers 6

    const-wide v2, -0x574d42c79d44578dL    # -1.217506599190777E-112

    :try_start_0
    sget-boolean v0, Labcd/me;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x574d42c79d44578dL    # -1.217506599190777E-112

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/me;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public DW()V
    .registers 5

    const-wide v2, -0x29a8d237b68dbe40L    # -8.505701034244347E107

    :try_start_0
    sget-boolean v0, Labcd/me;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x29a8d237b68dbe40L    # -8.505701034244347E107

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/me;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public EQ()Z
    .registers 5

    const-wide v2, 0x42f5f2125ed779f4L    # 3.8607095158979125E14

    :try_start_0
    sget-boolean v0, Labcd/me;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x42f5f2125ed779f4L    # 3.8607095158979125E14

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/me;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH()[Ljava/lang/String;
    .registers 5

    const-wide v2, -0x61b5f8c6e2fe9110L

    :try_start_0
    sget-boolean v0, Labcd/me;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x61b5f8c6e2fe9110L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/me;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Hw()[Ljava/lang/String;
    .registers 4

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "*.xml"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "*.xsl"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "*.xslt"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "*.xsd"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "*.*proj"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "*.resx"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "*.settings"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "*.config"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "*.tld"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "*.svg"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "*.classpath"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "*.project"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "*.pom"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public VH()V
    .registers 5

    const-wide v2, -0x34107a03bc38895L    # -7.726449508815494E292

    :try_start_0
    sget-boolean v0, Labcd/me;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x34107a03bc38895L    # -7.726449508815494E292

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/me;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Zo()Labcd/ka;
    .registers 5

    const-wide v2, -0x1a7c9b59ecd5fc7cL    # -1.0059026952555318E181

    :try_start_0
    sget-boolean v0, Labcd/me;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1a7c9b59ecd5fc7cL    # -1.0059026952555318E181

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/me;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public gn()Z
    .registers 5

    const-wide v2, 0xa76de0b3eaad348L    # 2.9745394999019277E-258

    :try_start_0
    sget-boolean v0, Labcd/me;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xa76de0b3eaad348L    # 2.9745394999019277E-258

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/me;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/Reader;
    .registers 12

    const-wide v6, -0x2fad94ed64894078L    # -8.53075182915758E78

    :try_start_0
    sget-boolean v0, Labcd/me;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2fad94ed64894078L    # -8.53075182915758E78

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/me;->DW:Z

    if-eqz v0, :cond_1

    move-wide v2, v6

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public j6()Ljava/lang/String;
    .registers 5

    const-wide v2, 0xae3925e87694b73L

    :try_start_0
    sget-boolean v0, Labcd/me;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xae3925e87694b73L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const-string v0, "XML"

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/me;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Labcd/Da;Labcd/na;)V
    .registers 10

    const-wide v2, -0x12ecc7075eca88e0L    # -2.650621678738176E217

    :try_start_0
    sget-boolean v0, Labcd/me;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x12ecc7075eca88e0L    # -2.650621678738176E217

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/me;->DW:Z

    if-eqz v0, :cond_1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public j6(Labcd/Da;Ljava/io/Reader;Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/Da;",
            "Ljava/io/Reader;",
            "Ljava/util/Map",
            "<",
            "Labcd/na;",
            "Labcd/Wa;",
            ">;)V"
        }
    .end annotation

    const-wide v6, 0xba00ef56ce67753L

    :try_start_0
    sget-boolean v0, Labcd/me;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xba00ef56ce67753L

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/me;->v5:Labcd/vc;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v1, p0, Labcd/me;->Hw:Labcd/ne;

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Labcd/Wa;

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Labcd/vc;->j6(Labcd/Da;Ljava/io/Reader;ZZLabcd/Wa;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/me;->DW:Z

    if-eqz v0, :cond_1

    move-wide v2, v6

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public j6(Labcd/Da;Ljava/io/Reader;Ljava/util/Map;Z)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/Da;",
            "Ljava/io/Reader;",
            "Ljava/util/Map",
            "<",
            "Labcd/na;",
            "Labcd/Sa;",
            ">;Z)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/me;->j6:Z

    if-eqz v0, :cond_0

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p4}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v0, -0x90d717134b0af90L

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/me;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->er:Labcd/Xa;

    invoke-virtual {v0}, Labcd/Xa;->j6()Labcd/Wa;

    move-result-object v5

    iget-object v0, p0, Labcd/me;->v5:Labcd/vc;

    iget-object v1, p0, Labcd/me;->Hw:Labcd/ne;

    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Labcd/vc;->j6(Labcd/Da;Ljava/io/Reader;ZZLabcd/Wa;)V

    iget-object v1, p0, Labcd/me;->Zo:Labcd/pe;

    iget-object v0, p0, Labcd/me;->Hw:Labcd/ne;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Sa;

    invoke-virtual {v1, v5, p1, p4, v0}, Labcd/pe;->j6(Labcd/Wa;Labcd/Da;ZLabcd/Sa;)V

    iget-object v0, p0, Labcd/me;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->er:Labcd/Xa;

    invoke-virtual {v0, v5}, Labcd/Xa;->j6(Labcd/Wa;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/me;->DW:Z

    if-eqz v0, :cond_1

    const-wide v2, -0x90d717134b0af90L

    new-instance v8, Ljava/lang/Boolean;

    invoke-direct {v8, p4}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public j6(Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    const-wide v2, -0x237960a5c685d4f9L    # -5.261724023870304E137

    :try_start_0
    sget-boolean v0, Labcd/me;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x237960a5c685d4f9L    # -5.261724023870304E137

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/me;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public tp()Labcd/ma;
    .registers 5

    const-wide v2, -0x4e97f7527cd669b8L

    :try_start_0
    sget-boolean v0, Labcd/me;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x4e97f7527cd669b8L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/me;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public u7()Labcd/ja;
    .registers 5

    const-wide v2, -0x3ebd9083edd4b760L    # -2416376.1419459134

    :try_start_0
    sget-boolean v0, Labcd/me;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3ebd9083edd4b760L    # -2416376.1419459134

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/me;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public v5()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Labcd/na;",
            ">;"
        }
    .end annotation

    const-wide v2, -0x38ff873407f6fb0L    # -2.499398833379714E291

    :try_start_0
    sget-boolean v0, Labcd/me;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x38ff873407f6fb0L    # -2.499398833379714E291

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Labcd/me;->Hw:Labcd/ne;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/me;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
