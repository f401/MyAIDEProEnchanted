.class Labcd/Lk;
.super Lcom/aide/engine/service/s$a;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Nk;->v5()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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


# instance fields
.field final v5:Labcd/Nk;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Labcd/Lk;

    const-wide v2, -0x1384ce20a8b9c79L

    const-wide v4, 0x7b388e3b2cbe880L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/Nk;)V
    .registers 2

    iput-object p1, p0, Labcd/Lk;->v5:Labcd/Nk;

    invoke-direct {p0}, Lcom/aide/engine/service/s$a;-><init>()V

    return-void
.end method


# virtual methods
.method public DW(Lcom/aide/engine/FileHighlightings;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0xaff59ccb1fedd11L
    .end annotation

    const-wide v2, 0x513cfc7aad66cc03L    # 2.1996359441470305E83

    :try_start_0
    sget-boolean v0, Labcd/Lk;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x513cfc7aad66cc03L    # 2.1996359441470305E83

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Lk;->v5:Labcd/Nk;

    iget-object v1, p1, Lcom/aide/engine/FileHighlightings;->FH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Labcd/Nk;->DW(Ljava/lang/String;)Labcd/Nk$a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Labcd/Nk$a;->DW(Lcom/aide/engine/FileHighlightings;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Lk;->Hw:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j6(Lcom/aide/engine/FileHighlightings;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x1fe0bb5fa89f5c28L
    .end annotation

    const-wide v2, -0x1981007c6c670390L    # -5.268566203098635E185

    :try_start_0
    sget-boolean v0, Labcd/Lk;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1981007c6c670390L    # -5.268566203098635E185

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget v0, p1, Lcom/aide/engine/FileHighlightings;->tp:I

    if-lez v0, :cond_2

    iget-object v0, p0, Labcd/Lk;->v5:Labcd/Nk;

    invoke-static {v0}, Labcd/Nk;->j6(Labcd/Nk;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Nk$c;

    invoke-interface {v0, p1}, Labcd/Nk$c;->j6(Lcom/aide/engine/FileHighlightings;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Lk;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Labcd/Lk;->v5:Labcd/Nk;

    iget-object v1, p1, Lcom/aide/engine/FileHighlightings;->FH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Labcd/Nk;->DW(Ljava/lang/String;)Labcd/Nk$a;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Labcd/Nk$a;->j6(Lcom/aide/engine/FileHighlightings;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    return-void
.end method
