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
    .registers 5

    const-wide v0, -0x1384ce20a8b9c79L

    const-wide v2, 0x7b388e3b2cbe880L

    const-class v4, Labcd/Lk;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v0, 0x513cfc7aad66cc03L  # 2.1996359441470305E83

    :try_start_5
    sget-boolean v2, Labcd/Lk;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Lk;->v5:Labcd/Nk;

    iget-object v3, p1, Lcom/aide/engine/FileHighlightings;->FH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Labcd/Nk;->DW(Ljava/lang/String;)Labcd/Nk$a;

    move-result-object v2

    if-eqz v2, :cond_19

    invoke-interface {v2, p1}, Labcd/Nk$a;->DW(Lcom/aide/engine/FileHighlightings;)V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    :cond_19
    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Labcd/Lk;->Hw:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public j6(Lcom/aide/engine/FileHighlightings;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x1fe0bb5fa89f5c28L
    .end annotation

    const-wide v0, -0x1981007c6c670390L  # -5.268566203098635E185

    :try_start_5
    sget-boolean v2, Labcd/Lk;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget v2, p1, Lcom/aide/engine/FileHighlightings;->tp:I

    if-lez v2, :cond_2a

    iget-object v2, p0, Labcd/Lk;->v5:Labcd/Nk;

    invoke-static {v2}, Labcd/Nk;->j6(Labcd/Nk;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/Nk$c;

    invoke-interface {v3, p1}, Labcd/Nk$c;->j6(Lcom/aide/engine/FileHighlightings;)V

    goto :goto_1a

    :cond_2a
    iget-object v2, p0, Labcd/Lk;->v5:Labcd/Nk;

    iget-object v3, p1, Lcom/aide/engine/FileHighlightings;->FH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Labcd/Nk;->DW(Ljava/lang/String;)Labcd/Nk$a;

    move-result-object v2

    if-eqz v2, :cond_37

    invoke-interface {v2, p1}, Labcd/Nk$a;->j6(Lcom/aide/engine/FileHighlightings;)V
    :try_end_37
    .catchall {:try_start_5 .. :try_end_37} :catchall_38

    :cond_37
    return-void

    :catchall_38
    move-exception v2

    sget-boolean v3, Labcd/Lk;->Hw:Z

    if-eqz v3, :cond_40

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_40
    goto :goto_42

    :goto_41
    throw v2

    :goto_42
    goto :goto_41
.end method
