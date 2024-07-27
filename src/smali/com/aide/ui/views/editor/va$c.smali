.class Lcom/aide/ui/views/editor/va$c;
.super Lcom/aide/ui/views/editor/va$i;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/views/editor/va;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# static fields
.field private static EQ:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static tp:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field final we:Lcom/aide/ui/views/editor/va;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, 0x6174f608760662fbL    # 2.946938490569913E161

    const-class v0, Lcom/aide/ui/views/editor/va$c;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/views/editor/va;Labcd/fm;Labcd/hm;C)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x13c36145cf07b41L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/va$c;->tp:Z

    if-eqz v0, :cond_0

    new-instance v6, Ljava/lang/Character;

    invoke-direct {v6, p4}, Ljava/lang/Character;-><init>(C)V

    const-wide v0, 0x2ad60f8ef0ac2753L    # 2.462420653100136E-102

    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/ui/views/editor/va$c;->we:Lcom/aide/ui/views/editor/va;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aide/ui/views/editor/va$i;-><init>(Lcom/aide/ui/views/editor/va;Labcd/fm;Labcd/hm;C)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/va$c;->EQ:Z

    if-eqz v0, :cond_1

    const-wide v2, 0x2ad60f8ef0ac2753L    # 2.462420653100136E-102

    const/4 v4, 0x0

    new-instance v8, Ljava/lang/Character;

    invoke-direct {v8, p4}, Ljava/lang/Character;-><init>(C)V

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public constructor <init>(Lcom/aide/ui/views/editor/va;Labcd/fm;Labcd/hm;Ljava/lang/String;)V
    .registers 15
    .annotation runtime Labcd/su;
        method = 0x253404d9b30d308L
    .end annotation

    const-wide v8, -0x1658aeae80d43d8L    # -7.087320395716795E301

    const/4 v7, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/va$c;->tp:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1658aeae80d43d8L    # -7.087320395716795E301

    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/ui/views/editor/va$c;->we:Lcom/aide/ui/views/editor/va;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aide/ui/views/editor/va$i;-><init>(Lcom/aide/ui/views/editor/va;Labcd/fm;Labcd/hm;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/va$c;->EQ:Z

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

.method public constructor <init>(Lcom/aide/ui/views/editor/va;Lcom/aide/ui/views/editor/va$h;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x770d82bce83ee43L
    .end annotation

    const-wide v2, -0x2688a20debb47cfL    # -9.589408508748878E296

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/va$c;->tp:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2688a20debb47cfL    # -9.589408508748878E296

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/ui/views/editor/va$c;->we:Lcom/aide/ui/views/editor/va;

    invoke-direct {p0, p1, p2}, Lcom/aide/ui/views/editor/va$i;-><init>(Lcom/aide/ui/views/editor/va;Lcom/aide/ui/views/editor/va$i;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/va$c;->EQ:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method


# virtual methods
.method public DW()Lcom/aide/ui/views/editor/va$b;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0xc6c91c1c8e90e67L
    .end annotation

    const-wide v2, -0x277ecc9a2856b2d0L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/va$c;->tp:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x277ecc9a2856b2d0L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/ui/views/editor/va$h;

    iget-object v1, p0, Lcom/aide/ui/views/editor/va$c;->we:Lcom/aide/ui/views/editor/va;

    invoke-direct {v0, v1, p0}, Lcom/aide/ui/views/editor/va$h;-><init>(Lcom/aide/ui/views/editor/va;Lcom/aide/ui/views/editor/va$c;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/va$c;->EQ:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Lcom/aide/ui/views/editor/g;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x4d86d8125cd56a0L
    .end annotation

    const-wide v4, -0x5f0689799aa8fdddL    # -7.778780863071871E-150

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/va$c;->tp:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x5f0689799aa8fdddL    # -7.778780863071871E-150

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/aide/ui/views/editor/va$i;->VH:Labcd/hm;

    invoke-virtual {v0}, Labcd/hm;->FH()I

    move-result v0

    iget-object v1, p0, Lcom/aide/ui/views/editor/va$i;->VH:Labcd/hm;

    invoke-virtual {v1}, Labcd/hm;->Hw()I

    move-result v1

    new-instance v2, Ljava/io/StringReader;

    iget-object v3, p0, Lcom/aide/ui/views/editor/va$i;->gn:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/aide/ui/views/editor/va$c;->we:Lcom/aide/ui/views/editor/va;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/aide/ui/views/editor/g;->j6(IILjava/io/Reader;Ljava/lang/Object;)Labcd/fm;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/va$c;->EQ:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public j6(Lcom/aide/ui/views/editor/va$b;)Z
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x45c56805ef773d4cL
    .end annotation

    const-wide v6, -0x47390d80b188ba35L    # -3.452719189771967E-35

    const/4 v3, 0x1

    :try_start_0
    sget-boolean v2, Lcom/aide/ui/views/editor/va$c;->tp:Z

    if-eqz v2, :cond_0

    const-wide v4, -0x47390d80b188ba35L    # -3.452719189771967E-35

    invoke-static {v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    instance-of v2, p1, Lcom/aide/ui/views/editor/va$c;

    if-eqz v2, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/aide/ui/views/editor/va$c;

    move-object v2, v0

    iget-object v4, v2, Lcom/aide/ui/views/editor/va$i;->VH:Labcd/hm;

    invoke-virtual {v4}, Labcd/hm;->Hw()I

    move-result v4

    iget-object v5, p0, Lcom/aide/ui/views/editor/va$i;->VH:Labcd/hm;

    invoke-virtual {v5}, Labcd/hm;->DW()I

    move-result v5

    if-ne v4, v5, :cond_2

    iget-object v4, v2, Lcom/aide/ui/views/editor/va$i;->VH:Labcd/hm;

    invoke-virtual {v4}, Labcd/hm;->FH()I

    move-result v4

    iget-object v5, p0, Lcom/aide/ui/views/editor/va$i;->VH:Labcd/hm;

    invoke-virtual {v5}, Labcd/hm;->j6()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/aide/ui/views/editor/va$i;->gn:Ljava/lang/StringBuffer;

    iget-object v5, v2, Lcom/aide/ui/views/editor/va$i;->gn:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/aide/ui/views/editor/va$i;->VH:Labcd/hm;

    iget-object v5, v2, Lcom/aide/ui/views/editor/va$i;->VH:Labcd/hm;

    invoke-virtual {v5}, Labcd/hm;->j6()I

    move-result v5

    invoke-virtual {v4, v5}, Labcd/hm;->j6(I)V

    iget-object v4, p0, Lcom/aide/ui/views/editor/va$i;->VH:Labcd/hm;

    iget-object v2, v2, Lcom/aide/ui/views/editor/va$i;->VH:Labcd/hm;

    invoke-virtual {v2}, Labcd/hm;->DW()I

    move-result v2

    invoke-virtual {v4, v2}, Labcd/hm;->DW(I)V

    move v2, v3

    :goto_0
    return v2

    :cond_1
    instance-of v2, p1, Lcom/aide/ui/views/editor/va$e;

    if-eqz v2, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/aide/ui/views/editor/va$e;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/va$d;->Hw()I

    move-result v4

    iget-object v5, p0, Lcom/aide/ui/views/editor/va$i;->VH:Labcd/hm;

    invoke-virtual {v5}, Labcd/hm;->DW()I

    move-result v5

    if-ne v4, v5, :cond_2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/va$d;->FH()I

    move-result v2

    iget-object v4, p0, Lcom/aide/ui/views/editor/va$i;->VH:Labcd/hm;

    invoke-virtual {v4}, Labcd/hm;->j6()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lcom/aide/ui/views/editor/va$i;->gn:Ljava/lang/StringBuffer;

    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/aide/ui/views/editor/va$i;->VH:Labcd/hm;

    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Labcd/hm;->j6(I)V

    iget-object v2, p0, Lcom/aide/ui/views/editor/va$i;->VH:Labcd/hm;

    iget-object v4, p0, Lcom/aide/ui/views/editor/va$i;->VH:Labcd/hm;

    invoke-virtual {v4}, Labcd/hm;->DW()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Labcd/hm;->DW(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/va$c;->EQ:Z

    if-eqz v3, :cond_3

    invoke-static {v2, v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v2
.end method
