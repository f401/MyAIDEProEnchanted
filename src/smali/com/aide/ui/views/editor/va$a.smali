.class Lcom/aide/ui/views/editor/va$a;
.super Lcom/aide/ui/views/editor/va$b;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/views/editor/va;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# static fields
.field private static Zo:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static v5:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field VH:Ljava/util/Vector;
    .annotation runtime Labcd/ru;
        field = 0x1690e43e9e25eccdL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/aide/ui/views/editor/va$b;",
            ">;"
        }
    .end annotation
.end field

.field final gn:Lcom/aide/ui/views/editor/va;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x323de0419e4c5675L    # -3.817359683731705E66

    const-class v0, Lcom/aide/ui/views/editor/va$a;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/views/editor/va;Labcd/fm;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x17e89aa436ff41cL
    .end annotation

    const-wide v2, 0x39fbe98083cb5117L    # 2.201877806512418E-29

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/va$a;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x39fbe98083cb5117L    # 2.201877806512418E-29

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/ui/views/editor/va$a;->gn:Lcom/aide/ui/views/editor/va;

    invoke-direct {p0, p1, p2}, Lcom/aide/ui/views/editor/va$b;-><init>(Lcom/aide/ui/views/editor/va;Labcd/fm;)V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/views/editor/va$a;->VH:Ljava/util/Vector;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/va$a;->Zo:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public constructor <init>(Lcom/aide/ui/views/editor/va;Labcd/fm;Lcom/aide/ui/views/editor/va$b;Lcom/aide/ui/views/editor/va$b;)V
    .registers 15
    .annotation runtime Labcd/su;
        method = -0x6c51590c5e3fd000L
    .end annotation

    const-wide v8, 0x3ec8610acc5c52bL

    const/4 v7, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/va$a;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3ec8610acc5c52bL

    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/ui/views/editor/va$a;->gn:Lcom/aide/ui/views/editor/va;

    invoke-direct {p0, p1, p2}, Lcom/aide/ui/views/editor/va$b;-><init>(Lcom/aide/ui/views/editor/va;Labcd/fm;)V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/views/editor/va$a;->VH:Ljava/util/Vector;

    iget-object v0, p0, Lcom/aide/ui/views/editor/va$a;->VH:Ljava/util/Vector;

    invoke-virtual {v0, p3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/aide/ui/views/editor/va$a;->VH:Ljava/util/Vector;

    invoke-virtual {v0, p4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/va$a;->Zo:Z

    if-eqz v0, :cond_1

    move-wide v2, v8

    move-object v4, v7

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method


# virtual methods
.method public DW()Lcom/aide/ui/views/editor/va$b;
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x2cd14a91440aad87L
    .end annotation

    const-wide v4, 0x468a9bc93a00a86fL    # 6.7460661436554135E31

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/va$a;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x468a9bc93a00a86fL    # 6.7460661436554135E31

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v2, Lcom/aide/ui/views/editor/va$a;

    iget-object v0, p0, Lcom/aide/ui/views/editor/va$a;->gn:Lcom/aide/ui/views/editor/va;

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1}, Lcom/aide/ui/views/editor/va$a;-><init>(Lcom/aide/ui/views/editor/va;Labcd/fm;)V

    iget-object v0, p0, Lcom/aide/ui/views/editor/va$a;->VH:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    iget-object v3, v2, Lcom/aide/ui/views/editor/va$a;->VH:Ljava/util/Vector;

    iget-object v0, p0, Lcom/aide/ui/views/editor/va$a;->VH:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/views/editor/va$b;

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/va$b;->DW()Lcom/aide/ui/views/editor/va$b;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/va$a;->Zo:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    return-object v2
.end method

.method public j6(Lcom/aide/ui/views/editor/g;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x2e9a9087bc8d608L
    .end annotation

    const-wide v2, -0x14ea53a26c9a64cL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/va$a;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x14ea53a26c9a64cL

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/va$a;->VH:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/aide/ui/views/editor/va$a;->VH:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/views/editor/va$b;

    invoke-virtual {v0, p1}, Lcom/aide/ui/views/editor/va$b;->j6(Lcom/aide/ui/views/editor/g;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/va$a;->Zo:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    return-void
.end method

.method public j6(Lcom/aide/ui/views/editor/va$b;)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x39e7a580794b6aa0L
    .end annotation

    const-wide v2, -0x681c1e6be27afb20L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/va$a;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x681c1e6be27afb20L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/va$a;->VH:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aide/ui/views/editor/va$a;->VH:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/views/editor/va$b;

    invoke-virtual {v0, p1}, Lcom/aide/ui/views/editor/va$b;->j6(Lcom/aide/ui/views/editor/va$b;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/views/editor/va$a;->VH:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_2
    iget-object v0, p0, Lcom/aide/ui/views/editor/va$a;->VH:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/va$a;->Zo:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method
