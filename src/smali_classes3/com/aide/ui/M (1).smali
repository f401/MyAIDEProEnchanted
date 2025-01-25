.class public Lcom/aide/ui/M;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/common/KeyStrokeDetector$a;


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
.field private FH:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = -0x314f8424c2434de0L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Labcd/Wl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/M;

    const-wide v1, 0x3fab4327a903d000L  # 0.05324672640008998

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Labcd/Wl;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x3237076002de7bb9L  # 8.5418599113253E-67

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/M;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aide/ui/M;->FH:Ljava/util/List;
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/M;->DW:Z

    if-eqz v4, :cond_1b

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v3
.end method

.method private DW(Lcom/aide/common/u;)Labcd/Wl;
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x407e21dd45b3d27bL
    .end annotation

    const-wide v0, -0x33696cd8f4425d57L  # -9.069082082639709E60

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/M;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/M;->FH:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/Wl;

    invoke-static {}, Lcom/aide/ui/U;->j3()Labcd/Bk;

    move-result-object v4

    invoke-virtual {v4, v3}, Labcd/Bk;->j6(Labcd/Wl;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_12

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/aide/common/u;

    invoke-virtual {v5, p1}, Lcom/aide/common/u;->j6(Lcom/aide/common/u;)Z

    move-result v5
    :try_end_3c
    .catchall {:try_start_5 .. :try_end_3c} :catchall_41

    if-eqz v5, :cond_2c

    return-object v3

    :cond_3f
    const/4 p1, 0x0

    return-object p1

    :catchall_41
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/M;->DW:Z

    if-eqz v3, :cond_49

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_49
    goto :goto_4b

    :goto_4a
    throw v2

    :goto_4b
    goto :goto_4a
.end method


# virtual methods
.method public j6(Lcom/aide/common/u;)Z
    .registers 7

    const-wide v0, 0x795d012d8fc2585L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/M;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Lcom/aide/ui/M;->DW(Lcom/aide/common/u;)Labcd/Wl;

    move-result-object v2

    if-eqz v2, :cond_35

    invoke-interface {v2}, Labcd/Wl;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_33

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Global key command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Labcd/Wl;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Labcd/F;->j6(Ljava/lang/String;)V

    invoke-interface {v2}, Labcd/Wl;->run()Z
    :try_end_33
    .catchall {:try_start_5 .. :try_end_33} :catchall_37

    :cond_33
    const/4 p1, 0x1

    return p1

    :cond_35
    const/4 p1, 0x0

    return p1

    :catchall_37
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/M;->DW:Z

    if-eqz v3, :cond_3f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3f
    throw v2
.end method
