.class Lcom/aide/ui/views/editor/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/ui/views/editor/ra$a;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/views/editor/g;->j6(Ljava/io/Reader;ZIZ)V
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
.field final FH:Ljava/lang/StringBuffer;

.field final Hw:Z

.field final VH:Lcom/aide/ui/views/editor/g;
    .annotation runtime Labcd/vu;
    .end annotation
.end field

.field final Zo:Z

.field final v5:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/ui/views/editor/d;

    const-wide v2, 0x9bc2c072ae09d4fL

    const-wide v4, 0x3870c1ec1c0d226cL    # 7.879342863557953E-37

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/views/editor/g;Ljava/lang/StringBuffer;ZIZ)V
    .registers 6

    iput-object p1, p0, Lcom/aide/ui/views/editor/d;->VH:Lcom/aide/ui/views/editor/g;

    iput-object p2, p0, Lcom/aide/ui/views/editor/d;->FH:Ljava/lang/StringBuffer;

    iput-boolean p3, p0, Lcom/aide/ui/views/editor/d;->Hw:Z

    iput p4, p0, Lcom/aide/ui/views/editor/d;->v5:I

    iput-boolean p5, p0, Lcom/aide/ui/views/editor/d;->Zo:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DW(I[CII)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x1fc8a1dd117ade2dL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/d;->j6:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x14839b4c1d918e80L    # -5.834100935705166E209

    move-object v2, p0

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/d;->FH:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-boolean v0, p0, Lcom/aide/ui/views/editor/d;->Hw:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    move v2, v0

    move v1, p3

    :goto_0
    add-int v3, p3, p4

    if-ge v1, v3, :cond_1

    aget-char v0, p2, v1

    const/16 v4, 0x9

    if-eq v0, v4, :cond_3

    const/16 v4, 0x20

    if-eq v0, v4, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_1
    :try_start_1
    iget v4, p0, Lcom/aide/ui/views/editor/d;->v5:I

    div-int v4, v2, v4

    if-ge v0, v4, :cond_5

    iget-object v4, p0, Lcom/aide/ui/views/editor/d;->FH:Ljava/lang/StringBuffer;

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v2, 0x1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/aide/ui/views/editor/d;->v5:I

    iget v3, p0, Lcom/aide/ui/views/editor/d;->v5:I

    rem-int v3, v2, v3

    sub-int/2addr v0, v3

    if-nez v0, :cond_4

    iget v0, p0, Lcom/aide/ui/views/editor/d;->v5:I

    :cond_4
    add-int/2addr v0, v2

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_3
    iget v4, p0, Lcom/aide/ui/views/editor/d;->v5:I

    rem-int v4, v2, v4

    if-ge v0, v4, :cond_e

    iget-object v4, p0, Lcom/aide/ui/views/editor/d;->FH:Ljava/lang/StringBuffer;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :goto_4
    if-ge v0, v3, :cond_b

    aget-char v1, p2, v0

    invoke-static {v1}, Ljava/lang/Character;->isISOControl(C)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-eqz v1, :cond_6

    aget-char v1, p2, v0

    const/16 v2, 0x9

    if-ne v1, v2, :cond_7

    :cond_6
    :try_start_2
    iget-object v1, p0, Lcom/aide/ui/views/editor/d;->FH:Ljava/lang/StringBuffer;

    aget-char v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    move v0, p3

    :goto_5
    add-int v1, p3, p4

    if-ge v0, v1, :cond_b

    aget-char v1, p2, v0

    invoke-static {v1}, Ljava/lang/Character;->isISOControl(C)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    if-eqz v1, :cond_9

    aget-char v1, p2, v0

    const/16 v2, 0x9

    if-ne v1, v2, :cond_a

    :cond_9
    :try_start_3
    iget-object v1, p0, Lcom/aide/ui/views/editor/d;->FH:Ljava/lang/StringBuffer;

    aget-char v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_b
    iget-object v0, p0, Lcom/aide/ui/views/editor/d;->FH:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/aide/ui/views/editor/d;->FH:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    new-array v0, v0, [C

    iget-object v1, p0, Lcom/aide/ui/views/editor/d;->FH:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/aide/ui/views/editor/d;->FH:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    iget-object v1, p0, Lcom/aide/ui/views/editor/d;->VH:Lcom/aide/ui/views/editor/g;

    invoke-static {v1}, Lcom/aide/ui/views/editor/g;->j6(Lcom/aide/ui/views/editor/g;)Ljava/util/Vector;

    move-result-object v1

    iget-object v2, p0, Lcom/aide/ui/views/editor/d;->VH:Lcom/aide/ui/views/editor/g;

    invoke-static {v2, v0}, Lcom/aide/ui/views/editor/g;->j6(Lcom/aide/ui/views/editor/g;[C)Lcom/aide/ui/views/editor/A;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_6
    return-void

    :cond_c
    iget-object v0, p0, Lcom/aide/ui/views/editor/d;->VH:Lcom/aide/ui/views/editor/g;

    invoke-static {v0}, Lcom/aide/ui/views/editor/g;->j6(Lcom/aide/ui/views/editor/g;)Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/ui/views/editor/d;->VH:Lcom/aide/ui/views/editor/g;

    invoke-static {v1}, Lcom/aide/ui/views/editor/g;->DW(Lcom/aide/ui/views/editor/g;)Lcom/aide/ui/views/editor/A;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_6

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/d;->DW:Z

    if-eqz v0, :cond_d

    const-wide v2, -0x14839b4c1d918e80L    # -5.834100935705166E209

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    throw v1

    :cond_e
    move v0, v1

    goto/16 :goto_4
.end method

.method public j6(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x1c186d5d3360d9efL
    .end annotation

    const-wide v2, -0xd3f2187e520d980L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/d;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xd3f2187e520d980L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/aide/ui/views/editor/d;->Zo:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/d;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(I[CII)Z
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x3bf70b2844da98bL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/d;->j6:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x3e919bd7b3b82198L    # -1.5933762383773044E7

    move-object v2, p0

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/d;->FH:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-boolean v0, p0, Lcom/aide/ui/views/editor/d;->Hw:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    move v2, v0

    move v1, p3

    :goto_0
    add-int v3, p3, p4

    if-ge v1, v3, :cond_1

    aget-char v0, p2, v1

    const/16 v4, 0x9

    if-eq v0, v4, :cond_3

    const/16 v4, 0x20

    if-eq v0, v4, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_1
    :try_start_1
    iget v4, p0, Lcom/aide/ui/views/editor/d;->v5:I

    div-int v4, v2, v4

    if-ge v0, v4, :cond_5

    iget-object v4, p0, Lcom/aide/ui/views/editor/d;->FH:Ljava/lang/StringBuffer;

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v2, 0x1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/aide/ui/views/editor/d;->v5:I

    iget v3, p0, Lcom/aide/ui/views/editor/d;->v5:I

    rem-int v3, v2, v3

    sub-int/2addr v0, v3

    if-nez v0, :cond_4

    iget v0, p0, Lcom/aide/ui/views/editor/d;->v5:I

    :cond_4
    add-int/2addr v0, v2

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_3
    iget v4, p0, Lcom/aide/ui/views/editor/d;->v5:I

    rem-int v4, v2, v4

    if-ge v0, v4, :cond_e

    iget-object v4, p0, Lcom/aide/ui/views/editor/d;->FH:Ljava/lang/StringBuffer;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :goto_4
    if-ge v0, v3, :cond_b

    aget-char v1, p2, v0

    invoke-static {v1}, Ljava/lang/Character;->isISOControl(C)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-eqz v1, :cond_6

    aget-char v1, p2, v0

    const/16 v2, 0x9

    if-ne v1, v2, :cond_7

    :cond_6
    :try_start_2
    iget-object v1, p0, Lcom/aide/ui/views/editor/d;->FH:Ljava/lang/StringBuffer;

    aget-char v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    move v0, p3

    :goto_5
    add-int v1, p3, p4

    if-ge v0, v1, :cond_b

    aget-char v1, p2, v0

    invoke-static {v1}, Ljava/lang/Character;->isISOControl(C)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    if-eqz v1, :cond_9

    aget-char v1, p2, v0

    const/16 v2, 0x9

    if-ne v1, v2, :cond_a

    :cond_9
    :try_start_3
    iget-object v1, p0, Lcom/aide/ui/views/editor/d;->FH:Ljava/lang/StringBuffer;

    aget-char v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_b
    iget-object v0, p0, Lcom/aide/ui/views/editor/d;->FH:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/aide/ui/views/editor/d;->FH:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    new-array v0, v0, [C

    iget-object v1, p0, Lcom/aide/ui/views/editor/d;->FH:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/aide/ui/views/editor/d;->FH:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    iget-object v1, p0, Lcom/aide/ui/views/editor/d;->VH:Lcom/aide/ui/views/editor/g;

    invoke-static {v1}, Lcom/aide/ui/views/editor/g;->j6(Lcom/aide/ui/views/editor/g;)Ljava/util/Vector;

    move-result-object v1

    iget-object v2, p0, Lcom/aide/ui/views/editor/d;->VH:Lcom/aide/ui/views/editor/g;

    invoke-static {v2, v0}, Lcom/aide/ui/views/editor/g;->j6(Lcom/aide/ui/views/editor/g;[C)Lcom/aide/ui/views/editor/A;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_6
    const/4 v0, 0x1

    return v0

    :cond_c
    iget-object v0, p0, Lcom/aide/ui/views/editor/d;->VH:Lcom/aide/ui/views/editor/g;

    invoke-static {v0}, Lcom/aide/ui/views/editor/g;->j6(Lcom/aide/ui/views/editor/g;)Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/ui/views/editor/d;->VH:Lcom/aide/ui/views/editor/g;

    invoke-static {v1}, Lcom/aide/ui/views/editor/g;->DW(Lcom/aide/ui/views/editor/g;)Lcom/aide/ui/views/editor/A;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_6

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/d;->DW:Z

    if-eqz v0, :cond_d

    const-wide v2, -0x3e919bd7b3b82198L    # -1.5933762383773044E7

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    throw v1

    :cond_e
    move v0, v1

    goto/16 :goto_4
.end method
