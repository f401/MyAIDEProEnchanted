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
            "Ljava/util/Vector<",
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
    .registers 3

    const-class v0, Lcom/aide/ui/views/editor/va$a;

    const-wide v1, -0x323de0419e4c5675L  # -3.817359683731705E66

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/views/editor/va;Labcd/fm;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x17e89aa436ff41cL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/va$a;->v5:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x39fbe98083cb5117L  # 2.201877806512418E-29

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Lcom/aide/ui/views/editor/va$a;->gn:Lcom/aide/ui/views/editor/va;

    invoke-direct {p0, p1, p2}, Lcom/aide/ui/views/editor/va$b;-><init>(Lcom/aide/ui/views/editor/va;Labcd/fm;)V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/views/editor/va$a;->VH:Ljava/util/Vector;
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/va$a;->Zo:Z

    if-eqz v1, :cond_2b

    const-wide v2, 0x39fbe98083cb5117L  # 2.201877806512418E-29

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v0
.end method

.method public constructor <init>(Lcom/aide/ui/views/editor/va;Labcd/fm;Lcom/aide/ui/views/editor/va$b;Lcom/aide/ui/views/editor/va$b;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x6c51590c5e3fd000L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/va$a;->v5:Z

    if-eqz v0, :cond_11

    const-wide v1, 0x3ec8610acc5c52bL

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iput-object p1, p0, Lcom/aide/ui/views/editor/va$a;->gn:Lcom/aide/ui/views/editor/va;

    invoke-direct {p0, p1, p2}, Lcom/aide/ui/views/editor/va$b;-><init>(Lcom/aide/ui/views/editor/va;Labcd/fm;)V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/views/editor/va$a;->VH:Ljava/util/Vector;

    invoke-virtual {v0, p3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/aide/ui/views/editor/va$a;->VH:Ljava/util/Vector;

    invoke-virtual {v0, p4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_25
    .catchall {:try_start_0 .. :try_end_25} :catchall_26

    return-void

    :catchall_26
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/va$a;->Zo:Z

    if-eqz v1, :cond_39

    const-wide v2, 0x3ec8610acc5c52bL

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_39
    throw v0
.end method


# virtual methods
.method public DW()Lcom/aide/ui/views/editor/va$b;
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x2cd14a91440aad87L
    .end annotation

    const-wide v0, 0x468a9bc93a00a86fL  # 6.7460661436554135E31

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/va$a;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/ui/views/editor/va$a;

    iget-object v3, p0, Lcom/aide/ui/views/editor/va$a;->gn:Lcom/aide/ui/views/editor/va;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/aide/ui/views/editor/va$a;-><init>(Lcom/aide/ui/views/editor/va;Labcd/fm;)V

    iget-object v3, p0, Lcom/aide/ui/views/editor/va$a;->VH:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1c
    if-ltz v3, :cond_32

    iget-object v4, v2, Lcom/aide/ui/views/editor/va$a;->VH:Ljava/util/Vector;

    iget-object v5, p0, Lcom/aide/ui/views/editor/va$a;->VH:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/aide/ui/views/editor/va$b;

    invoke-virtual {v5}, Lcom/aide/ui/views/editor/va$b;->DW()Lcom/aide/ui/views/editor/va$b;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_33

    add-int/lit8 v3, v3, -0x1

    goto :goto_1c

    :cond_32
    return-object v2

    :catchall_33
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/va$a;->Zo:Z

    if-eqz v3, :cond_3b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3b
    goto :goto_3d

    :goto_3c
    throw v2

    :goto_3d
    goto :goto_3c
.end method

.method public j6(Lcom/aide/ui/views/editor/g;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x2e9a9087bc8d608L
    .end annotation

    const-wide v0, -0x14ea53a26c9a64cL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/va$a;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    :goto_d
    iget-object v3, p0, Lcom/aide/ui/views/editor/va$a;->VH:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_23

    iget-object v3, p0, Lcom/aide/ui/views/editor/va$a;->VH:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/ui/views/editor/va$b;

    invoke-virtual {v3, p1}, Lcom/aide/ui/views/editor/va$b;->j6(Lcom/aide/ui/views/editor/g;)V
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_24

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_23
    return-void

    :catchall_24
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/va$a;->Zo:Z

    if-eqz v3, :cond_2c

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2c
    goto :goto_2e

    :goto_2d
    throw v2

    :goto_2e
    goto :goto_2d
.end method

.method public j6(Lcom/aide/ui/views/editor/va$b;)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x39e7a580794b6aa0L
    .end annotation

    const-wide v0, -0x681c1e6be27afb20L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/va$a;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/editor/va$a;->VH:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/aide/ui/views/editor/va$a;->VH:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/views/editor/va$b;

    invoke-virtual {v2, p1}, Lcom/aide/ui/views/editor/va$b;->j6(Lcom/aide/ui/views/editor/va$b;)Z

    move-result v2

    if-nez v2, :cond_2b

    iget-object v2, p0, Lcom/aide/ui/views/editor/va$a;->VH:Ljava/util/Vector;

    :goto_24
    invoke-virtual {v2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2b

    :cond_28
    iget-object v2, p0, Lcom/aide/ui/views/editor/va$a;->VH:Ljava/util/Vector;
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_2d

    goto :goto_24

    :cond_2b
    :goto_2b
    const/4 p1, 0x1

    return p1

    :catchall_2d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/va$a;->Zo:Z

    if-eqz v3, :cond_35

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_35
    goto :goto_37

    :goto_36
    throw v2

    :goto_37
    goto :goto_36
.end method
