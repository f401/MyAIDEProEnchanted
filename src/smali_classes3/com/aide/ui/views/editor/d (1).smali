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
    .registers 5

    const-wide v0, 0x9bc2c072ae09d4fL

    const-wide v2, 0x3870c1ec1c0d226cL  # 7.879342863557953E-37

    const-class v4, Lcom/aide/ui/views/editor/d;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    if-eqz v0, :cond_1d

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x14839b4c1d918e80L  # -5.834100935705166E209

    move-object v3, p0

    move-object v5, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    iget-object v0, p0, Lcom/aide/ui/views/editor/d;->FH:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-boolean v0, p0, Lcom/aide/ui/views/editor/d;->Hw:Z
    :try_end_25
    .catchall {:try_start_0 .. :try_end_25} :catchall_d3

    const/16 v2, 0x9

    if-eqz v0, :cond_7f

    move v0, p3

    const/4 v3, 0x0

    :goto_2b
    add-int v4, p3, p4

    const/16 v5, 0x20

    if-ge v0, v4, :cond_49

    aget-char v6, p2, v0

    if-eq v6, v2, :cond_3b

    if-eq v6, v5, :cond_38

    goto :goto_49

    :cond_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    :cond_3b
    :try_start_3b
    iget v4, p0, Lcom/aide/ui/views/editor/d;->v5:I

    rem-int v5, v3, v4

    sub-int v5, v4, v5

    if-nez v5, :cond_44

    goto :goto_45

    :cond_44
    move v4, v5

    :goto_45
    add-int/2addr v3, v4

    :goto_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    :cond_49
    :goto_49
    const/4 v6, 0x0

    :goto_4a
    iget v7, p0, Lcom/aide/ui/views/editor/d;->v5:I

    div-int v7, v3, v7

    if-ge v6, v7, :cond_58

    iget-object v7, p0, Lcom/aide/ui/views/editor/d;->FH:Ljava/lang/StringBuffer;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_4a

    :cond_58
    const/4 v6, 0x0

    :goto_59
    iget v7, p0, Lcom/aide/ui/views/editor/d;->v5:I

    rem-int v7, v3, v7

    if-ge v6, v7, :cond_67

    iget-object v7, p0, Lcom/aide/ui/views/editor/d;->FH:Ljava/lang/StringBuffer;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_59

    :cond_67
    :goto_67
    if-ge v0, v4, :cond_9a

    aget-char v3, p2, v0

    invoke-static {v3}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v3
    :try_end_6f
    .catchall {:try_start_3b .. :try_end_6f} :catchall_d3

    if-eqz v3, :cond_75

    aget-char v3, p2, v0

    if-ne v3, v2, :cond_7c

    :cond_75
    :try_start_75
    iget-object v3, p0, Lcom/aide/ui/views/editor/d;->FH:Ljava/lang/StringBuffer;

    aget-char v5, p2, v0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_7c
    add-int/lit8 v0, v0, 0x1

    goto :goto_67

    :cond_7f
    move v0, p3

    :goto_80
    add-int v3, p3, p4

    if-ge v0, v3, :cond_9a

    aget-char v3, p2, v0

    invoke-static {v3}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v3
    :try_end_8a
    .catchall {:try_start_75 .. :try_end_8a} :catchall_d3

    if-eqz v3, :cond_90

    aget-char v3, p2, v0

    if-ne v3, v2, :cond_97

    :cond_90
    :try_start_90
    iget-object v3, p0, Lcom/aide/ui/views/editor/d;->FH:Ljava/lang/StringBuffer;

    aget-char v4, p2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_97
    add-int/lit8 v0, v0, 0x1

    goto :goto_80

    :cond_9a
    iget-object v0, p0, Lcom/aide/ui/views/editor/d;->FH:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_c3

    iget-object v0, p0, Lcom/aide/ui/views/editor/d;->FH:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    new-array v0, v0, [C

    iget-object v2, p0, Lcom/aide/ui/views/editor/d;->FH:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    invoke-virtual {v2, v1, v3, v0, v1}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    iget-object v1, p0, Lcom/aide/ui/views/editor/d;->VH:Lcom/aide/ui/views/editor/g;

    invoke-static {v1}, Lcom/aide/ui/views/editor/g;->j6(Lcom/aide/ui/views/editor/g;)Ljava/util/Vector;

    move-result-object v1

    iget-object v2, p0, Lcom/aide/ui/views/editor/d;->VH:Lcom/aide/ui/views/editor/g;

    invoke-static {v2, v0}, Lcom/aide/ui/views/editor/g;->j6(Lcom/aide/ui/views/editor/g;[C)Lcom/aide/ui/views/editor/A;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_d2

    :cond_c3
    iget-object v0, p0, Lcom/aide/ui/views/editor/d;->VH:Lcom/aide/ui/views/editor/g;

    invoke-static {v0}, Lcom/aide/ui/views/editor/g;->j6(Lcom/aide/ui/views/editor/g;)Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/ui/views/editor/d;->VH:Lcom/aide/ui/views/editor/g;

    invoke-static {v1}, Lcom/aide/ui/views/editor/g;->DW(Lcom/aide/ui/views/editor/g;)Lcom/aide/ui/views/editor/A;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_d2
    .catchall {:try_start_90 .. :try_end_d2} :catchall_d3

    :goto_d2
    return-void

    :catchall_d3
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/d;->DW:Z

    if-eqz v1, :cond_f2

    const-wide v2, -0x14839b4c1d918e80L  # -5.834100935705166E209

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_f2
    goto :goto_f4

    :goto_f3
    throw v0

    :goto_f4
    goto :goto_f3
.end method

.method public j6(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x1c186d5d3360d9efL
    .end annotation

    const-wide v0, -0xd3f2187e520d980L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/d;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public j6(I[CII)Z
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x3bf70b2844da98bL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/d;->j6:Z

    if-eqz v0, :cond_1d

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x3e919bd7b3b82198L  # -1.5933762383773044E7

    move-object v3, p0

    move-object v5, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    iget-object v0, p0, Lcom/aide/ui/views/editor/d;->FH:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-boolean v0, p0, Lcom/aide/ui/views/editor/d;->Hw:Z
    :try_end_25
    .catchall {:try_start_0 .. :try_end_25} :catchall_d4

    const/16 v2, 0x9

    if-eqz v0, :cond_7f

    move v0, p3

    const/4 v3, 0x0

    :goto_2b
    add-int v4, p3, p4

    const/16 v5, 0x20

    if-ge v0, v4, :cond_49

    aget-char v6, p2, v0

    if-eq v6, v2, :cond_3b

    if-eq v6, v5, :cond_38

    goto :goto_49

    :cond_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    :cond_3b
    :try_start_3b
    iget v4, p0, Lcom/aide/ui/views/editor/d;->v5:I

    rem-int v5, v3, v4

    sub-int v5, v4, v5

    if-nez v5, :cond_44

    goto :goto_45

    :cond_44
    move v4, v5

    :goto_45
    add-int/2addr v3, v4

    :goto_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    :cond_49
    :goto_49
    const/4 v6, 0x0

    :goto_4a
    iget v7, p0, Lcom/aide/ui/views/editor/d;->v5:I

    div-int v7, v3, v7

    if-ge v6, v7, :cond_58

    iget-object v7, p0, Lcom/aide/ui/views/editor/d;->FH:Ljava/lang/StringBuffer;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_4a

    :cond_58
    const/4 v6, 0x0

    :goto_59
    iget v7, p0, Lcom/aide/ui/views/editor/d;->v5:I

    rem-int v7, v3, v7

    if-ge v6, v7, :cond_67

    iget-object v7, p0, Lcom/aide/ui/views/editor/d;->FH:Ljava/lang/StringBuffer;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_59

    :cond_67
    :goto_67
    if-ge v0, v4, :cond_9a

    aget-char v3, p2, v0

    invoke-static {v3}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v3
    :try_end_6f
    .catchall {:try_start_3b .. :try_end_6f} :catchall_d4

    if-eqz v3, :cond_75

    aget-char v3, p2, v0

    if-ne v3, v2, :cond_7c

    :cond_75
    :try_start_75
    iget-object v3, p0, Lcom/aide/ui/views/editor/d;->FH:Ljava/lang/StringBuffer;

    aget-char v5, p2, v0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_7c
    add-int/lit8 v0, v0, 0x1

    goto :goto_67

    :cond_7f
    move v0, p3

    :goto_80
    add-int v3, p3, p4

    if-ge v0, v3, :cond_9a

    aget-char v3, p2, v0

    invoke-static {v3}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v3
    :try_end_8a
    .catchall {:try_start_75 .. :try_end_8a} :catchall_d4

    if-eqz v3, :cond_90

    aget-char v3, p2, v0

    if-ne v3, v2, :cond_97

    :cond_90
    :try_start_90
    iget-object v3, p0, Lcom/aide/ui/views/editor/d;->FH:Ljava/lang/StringBuffer;

    aget-char v4, p2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_97
    add-int/lit8 v0, v0, 0x1

    goto :goto_80

    :cond_9a
    iget-object v0, p0, Lcom/aide/ui/views/editor/d;->FH:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_c3

    iget-object v0, p0, Lcom/aide/ui/views/editor/d;->FH:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    new-array v0, v0, [C

    iget-object v2, p0, Lcom/aide/ui/views/editor/d;->FH:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    invoke-virtual {v2, v1, v3, v0, v1}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    iget-object v1, p0, Lcom/aide/ui/views/editor/d;->VH:Lcom/aide/ui/views/editor/g;

    invoke-static {v1}, Lcom/aide/ui/views/editor/g;->j6(Lcom/aide/ui/views/editor/g;)Ljava/util/Vector;

    move-result-object v1

    iget-object v2, p0, Lcom/aide/ui/views/editor/d;->VH:Lcom/aide/ui/views/editor/g;

    invoke-static {v2, v0}, Lcom/aide/ui/views/editor/g;->j6(Lcom/aide/ui/views/editor/g;[C)Lcom/aide/ui/views/editor/A;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_d2

    :cond_c3
    iget-object v0, p0, Lcom/aide/ui/views/editor/d;->VH:Lcom/aide/ui/views/editor/g;

    invoke-static {v0}, Lcom/aide/ui/views/editor/g;->j6(Lcom/aide/ui/views/editor/g;)Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/ui/views/editor/d;->VH:Lcom/aide/ui/views/editor/g;

    invoke-static {v1}, Lcom/aide/ui/views/editor/g;->DW(Lcom/aide/ui/views/editor/g;)Lcom/aide/ui/views/editor/A;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_d2
    .catchall {:try_start_90 .. :try_end_d2} :catchall_d4

    :goto_d2
    const/4 p1, 0x1

    return p1

    :catchall_d4
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/d;->DW:Z

    if-eqz v1, :cond_f3

    const-wide v2, -0x3e919bd7b3b82198L  # -1.5933762383773044E7

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_f3
    goto :goto_f5

    :goto_f4
    throw v0

    :goto_f5
    goto :goto_f4
.end method
