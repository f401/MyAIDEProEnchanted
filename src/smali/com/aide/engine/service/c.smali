.class Lcom/aide/engine/service/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/engine/j;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/engine/service/CodeAnalysisEngineService;-><init>()V
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
.field final FH:Lcom/aide/engine/service/CodeAnalysisEngineService;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/engine/service/c;

    const-wide v2, 0x1bd72709e548b1bdL

    const-wide v4, -0x208425beb0b0bd7L    # -6.210560401645027E298

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/engine/service/CodeAnalysisEngineService;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/engine/service/c;->FH:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public FH()J
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x1a6bd25890c8bc00L
    .end annotation

    const-wide v2, -0x4dc86eed50467ce7L    # -8.741371662624136E-67

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/c;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x4dc86eed50467ce7L    # -8.741371662624136E-67

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/c;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Labcd/La;Ljava/util/List;)[Labcd/la;
    .registers 10
    .annotation runtime Labcd/su;
        method = 0xdc055ba8054fee4L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/La;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Labcd/la;"
        }
    .end annotation

    const-wide v2, -0x301465323fe11887L    # -9.988769117831606E76

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/c;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x301465323fe11887L    # -9.988769117831606E76

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p1, p2}, Lcom/aide/engine/service/x;->j6(Labcd/La;Ljava/util/List;)[Labcd/la;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/service/c;->DW:Z

    if-eqz v0, :cond_1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method
