.class public Lcom/aide/engine/x;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/engine/s;


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
.field private final FH:Z
    .annotation runtime Labcd/ru;
        field = 0x1604ec8e5fa79c0L
    .end annotation
.end field

.field private final Hw:Z
    .annotation runtime Labcd/ru;
        field = -0x25d194fa733066cL
    .end annotation
.end field

.field private final VH:Lcom/aide/engine/s;
    .annotation runtime Labcd/ru;
        field = -0xebcabba4c8efa2fL
    .end annotation
.end field

.field private final Zo:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x2eac038922839df1L
    .end annotation
.end field

.field private final v5:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x17a026336035a0c9L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/engine/x;

    const-wide v1, 0x66f42865985478b1L  # 8.77082504970369E187

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(ZZLjava/lang/String;Ljava/lang/String;Lcom/aide/engine/s;)V
    .registers 16

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/x;->j6:Z

    if-eqz v0, :cond_1a

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p1}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, -0x12d841f668334100L  # -6.547722879020334E217

    const/4 v3, 0x0

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/aide/engine/x;->FH:Z

    iput-boolean p2, p0, Lcom/aide/engine/x;->Hw:Z

    iput-object p3, p0, Lcom/aide/engine/x;->v5:Ljava/lang/String;

    iput-object p4, p0, Lcom/aide/engine/x;->Zo:Ljava/lang/String;

    iput-object p5, p0, Lcom/aide/engine/x;->VH:Lcom/aide/engine/s;
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_28

    return-void

    :catchall_28
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/x;->DW:Z

    if-eqz v1, :cond_44

    const-wide v2, -0x12d841f668334100L  # -6.547722879020334E217

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_44
    throw v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 6

    const-wide v0, 0x303ff4fb1019b0f0L  # 2.759856577958001E-76

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/x;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v3, p0, Lcom/aide/engine/x;->FH:Z
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_47

    if-eqz v3, :cond_18

    const-string v3, ""

    goto :goto_2b

    :cond_18
    :try_start_18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/aide/engine/x;->VH:Lcom/aide/engine/s;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/aide/engine/x;->v5:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/aide/engine/x;->Zo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_46
    .catchall {:try_start_18 .. :try_end_46} :catchall_47

    return-object v0

    :catchall_47
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/x;->DW:Z

    if-eqz v3, :cond_4f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4f
    throw v2
.end method
