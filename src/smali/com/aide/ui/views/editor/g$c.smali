.class Lcom/aide/ui/views/editor/g$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/ui/views/editor/ra$a;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/views/editor/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
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
.field public FH:I
    .annotation runtime Labcd/ru;
        field = -0xf4ec0949c4ab769L
    .end annotation
.end field

.field public Hw:I
    .annotation runtime Labcd/ru;
        field = -0x6298320310f372dL
    .end annotation
.end field

.field private VH:I
    .annotation runtime Labcd/ru;
        field = 0x22511c322ccea403L
    .end annotation
.end field

.field private Zo:Z
    .annotation runtime Labcd/ru;
        field = 0x4a256b3e15b9743L
    .end annotation
.end field

.field private gn:Ljava/lang/StringBuffer;
    .annotation runtime Labcd/ru;
        field = -0x2027d58ff86acc9bL
    .end annotation
.end field

.field final u7:Lcom/aide/ui/views/editor/g;
    .annotation runtime Labcd/vu;
    .end annotation
.end field

.field public v5:Z
    .annotation runtime Labcd/ru;
        field = 0x1409ca7ed9ebf58bL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, 0x84752f0cabb16d0L

    const-class v0, Lcom/aide/ui/views/editor/g$c;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/views/editor/g;IIZI)V
    .registers 16
    .annotation runtime Labcd/su;
        method = 0x115d7845f45ccdb4L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g$c;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p4}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x1885190374bbbae8L

    const/4 v2, 0x0

    move-object v3, p1

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/ui/views/editor/g$c;->u7:Lcom/aide/ui/views/editor/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/aide/ui/views/editor/g$c;->FH:I

    iput p3, p0, Lcom/aide/ui/views/editor/g$c;->Hw:I

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/views/editor/g$c;->gn:Ljava/lang/StringBuffer;

    iput p5, p0, Lcom/aide/ui/views/editor/g$c;->VH:I

    iput-boolean p4, p0, Lcom/aide/ui/views/editor/g$c;->Zo:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/g$c;->DW:Z

    if-eqz v0, :cond_1

    const-wide v2, 0x1885190374bbbae8L

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Boolean;

    invoke-direct {v8, p4}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method


# virtual methods
.method public DW(I[CII)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0xa45dc8c8125c41dL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g$c;->j6:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x43acac8787da0ca0L    # 1.03308767330240512E18

    move-object v2, p0

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aide/ui/views/editor/g$c;->v5:Z

    iget-object v0, p0, Lcom/aide/ui/views/editor/g$c;->gn:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    move v0, p3

    :goto_0
    add-int v1, p3, p4

    if-ge v0, v1, :cond_3

    aget-char v1, p2, v0

    invoke-static {v1}, Ljava/lang/Character;->isISOControl(C)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    aget-char v1, p2, v0

    const/16 v2, 0x9

    if-ne v1, v2, :cond_2

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/aide/ui/views/editor/g$c;->gn:Ljava/lang/StringBuffer;

    aget-char v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/aide/ui/views/editor/g$c;->gn:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/aide/ui/views/editor/g$c;->u7:Lcom/aide/ui/views/editor/g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/aide/ui/views/editor/g;->j6(Lcom/aide/ui/views/editor/g;Z)Z

    iget-object v0, p0, Lcom/aide/ui/views/editor/g$c;->gn:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    new-array v1, v0, [C

    iget-object v0, p0, Lcom/aide/ui/views/editor/g$c;->gn:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/aide/ui/views/editor/g$c;->gn:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v1, v4}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    iget-object v0, p0, Lcom/aide/ui/views/editor/g$c;->u7:Lcom/aide/ui/views/editor/g;

    invoke-static {v0}, Lcom/aide/ui/views/editor/g;->j6(Lcom/aide/ui/views/editor/g;)Ljava/util/Vector;

    move-result-object v0

    iget v2, p0, Lcom/aide/ui/views/editor/g$c;->Hw:I

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/views/editor/A;

    iget v2, p0, Lcom/aide/ui/views/editor/g$c;->FH:I

    invoke-virtual {v0, v1, v2}, Lcom/aide/ui/views/editor/A;->j6([CI)V

    iget v0, p0, Lcom/aide/ui/views/editor/g$c;->FH:I

    iget-object v1, p0, Lcom/aide/ui/views/editor/g$c;->gn:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aide/ui/views/editor/g$c;->FH:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/g$c;->DW:Z

    if-eqz v0, :cond_5

    const-wide v2, 0x43acac8787da0ca0L    # 1.03308767330240512E18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    throw v1
.end method

.method public j6(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x2efca3fb8f239001L
    .end annotation

    const-wide v2, -0x390a05d4d1e6380L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g$c;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x390a05d4d1e6380L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g$c;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(I[CII)Z
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x512c1b7e2da5a13L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g$c;->j6:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x19b8c5434ba692a0L

    move-object v2, p0

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/g$c;->u7:Lcom/aide/ui/views/editor/g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/aide/ui/views/editor/g;->j6(Lcom/aide/ui/views/editor/g;Z)Z

    iget-object v0, p0, Lcom/aide/ui/views/editor/g$c;->gn:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-boolean v0, p0, Lcom/aide/ui/views/editor/g$c;->Zo:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    move v3, p3

    :goto_0
    add-int v0, p3, p4

    if-ge v3, v0, :cond_7

    aget-char v0, p2, v3

    const/16 v2, 0x9

    if-ne v0, v2, :cond_c

    :try_start_1
    iget v0, p0, Lcom/aide/ui/views/editor/g$c;->VH:I

    iget v2, p0, Lcom/aide/ui/views/editor/g$c;->VH:I

    rem-int v2, v1, v2

    sub-int/2addr v0, v2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/aide/ui/views/editor/g$c;->VH:I

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    iget-object v4, p0, Lcom/aide/ui/views/editor/g$c;->gn:Ljava/lang/StringBuffer;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/2addr v0, v1

    :goto_2
    aget-char v1, p2, v3

    invoke-static {v1}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/aide/ui/views/editor/g$c;->gn:Ljava/lang/StringBuffer;

    aget-char v2, p2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    :cond_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v1, v0

    goto :goto_0

    :cond_4
    move v0, p3

    :goto_3
    add-int v1, p3, p4

    if-ge v0, v1, :cond_7

    aget-char v1, p2, v0

    invoke-static {v1}, Ljava/lang/Character;->isISOControl(C)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-eqz v1, :cond_5

    aget-char v1, p2, v0

    const/16 v2, 0x9

    if-ne v1, v2, :cond_6

    :cond_5
    :try_start_2
    iget-object v1, p0, Lcom/aide/ui/views/editor/g$c;->gn:Ljava/lang/StringBuffer;

    aget-char v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/aide/ui/views/editor/g$c;->gn:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/aide/ui/views/editor/g$c;->gn:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    new-array v1, v0, [C

    iget-object v0, p0, Lcom/aide/ui/views/editor/g$c;->gn:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/aide/ui/views/editor/g$c;->gn:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v1, v4}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    iget v0, p0, Lcom/aide/ui/views/editor/g$c;->FH:I

    if-nez v0, :cond_8

    new-instance v0, Lcom/aide/ui/views/editor/A;

    invoke-direct {v0, v1}, Lcom/aide/ui/views/editor/A;-><init>([C)V

    iget-object v1, p0, Lcom/aide/ui/views/editor/g$c;->u7:Lcom/aide/ui/views/editor/g;

    invoke-static {v1}, Lcom/aide/ui/views/editor/g;->j6(Lcom/aide/ui/views/editor/g;)Ljava/util/Vector;

    move-result-object v1

    iget v2, p0, Lcom/aide/ui/views/editor/g$c;->Hw:I

    invoke-virtual {v1, v0, v2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    :goto_4
    iget v0, p0, Lcom/aide/ui/views/editor/g$c;->Hw:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/aide/ui/views/editor/g$c;->Hw:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/aide/ui/views/editor/g$c;->FH:I

    const/4 v0, 0x1

    return v0

    :cond_8
    iget-object v0, p0, Lcom/aide/ui/views/editor/g$c;->u7:Lcom/aide/ui/views/editor/g;

    invoke-static {v0}, Lcom/aide/ui/views/editor/g;->j6(Lcom/aide/ui/views/editor/g;)Ljava/util/Vector;

    move-result-object v0

    iget v2, p0, Lcom/aide/ui/views/editor/g$c;->Hw:I

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/views/editor/A;

    iget v2, p0, Lcom/aide/ui/views/editor/g$c;->FH:I

    invoke-virtual {v0, v1, v2}, Lcom/aide/ui/views/editor/A;->j6([CI)V

    iget v2, p0, Lcom/aide/ui/views/editor/g$c;->FH:I

    array-length v1, v1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/aide/ui/views/editor/g$c;->FH:I

    iget-object v1, p0, Lcom/aide/ui/views/editor/g$c;->u7:Lcom/aide/ui/views/editor/g;

    invoke-static {v1}, Lcom/aide/ui/views/editor/g;->j6(Lcom/aide/ui/views/editor/g;)Ljava/util/Vector;

    move-result-object v1

    iget-object v2, p0, Lcom/aide/ui/views/editor/g$c;->u7:Lcom/aide/ui/views/editor/g;

    invoke-static {v2}, Lcom/aide/ui/views/editor/g;->DW(Lcom/aide/ui/views/editor/g;)Lcom/aide/ui/views/editor/A;

    move-result-object v2

    iget v3, p0, Lcom/aide/ui/views/editor/g$c;->Hw:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/A;->FH()I

    move-result v1

    iget v2, p0, Lcom/aide/ui/views/editor/g$c;->FH:I

    sub-int/2addr v1, v2

    new-array v2, v1, [C

    iget v1, p0, Lcom/aide/ui/views/editor/g$c;->FH:I

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/A;->FH()I

    move-result v3

    iget v4, p0, Lcom/aide/ui/views/editor/g$c;->FH:I

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/aide/ui/views/editor/A;->j6(II[CI)V

    iget-object v1, p0, Lcom/aide/ui/views/editor/g$c;->u7:Lcom/aide/ui/views/editor/g;

    invoke-static {v1}, Lcom/aide/ui/views/editor/g;->j6(Lcom/aide/ui/views/editor/g;)Ljava/util/Vector;

    move-result-object v1

    iget v3, p0, Lcom/aide/ui/views/editor/g$c;->Hw:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aide/ui/views/editor/A;

    invoke-virtual {v1, v2}, Lcom/aide/ui/views/editor/A;->j6([C)V

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/A;->FH()I

    move-result v1

    iget v2, p0, Lcom/aide/ui/views/editor/g$c;->FH:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/aide/ui/views/editor/g$c;->FH:I

    invoke-virtual {v0, v1, v2}, Lcom/aide/ui/views/editor/A;->j6(II)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/g$c;->DW:Z

    if-eqz v0, :cond_9

    const-wide v2, 0x19b8c5434ba692a0L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_9
    throw v1

    :cond_a
    :try_start_3
    iget v0, p0, Lcom/aide/ui/views/editor/g$c;->FH:I

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/aide/ui/views/editor/g$c;->u7:Lcom/aide/ui/views/editor/g;

    invoke-static {v0}, Lcom/aide/ui/views/editor/g;->j6(Lcom/aide/ui/views/editor/g;)Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/ui/views/editor/g$c;->u7:Lcom/aide/ui/views/editor/g;

    invoke-static {v1}, Lcom/aide/ui/views/editor/g;->DW(Lcom/aide/ui/views/editor/g;)Lcom/aide/ui/views/editor/A;

    move-result-object v1

    iget v2, p0, Lcom/aide/ui/views/editor/g$c;->Hw:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto/16 :goto_4

    :cond_b
    iget-object v0, p0, Lcom/aide/ui/views/editor/g$c;->u7:Lcom/aide/ui/views/editor/g;

    invoke-static {v0}, Lcom/aide/ui/views/editor/g;->j6(Lcom/aide/ui/views/editor/g;)Ljava/util/Vector;

    move-result-object v0

    iget v1, p0, Lcom/aide/ui/views/editor/g$c;->Hw:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/views/editor/A;

    iget-object v1, p0, Lcom/aide/ui/views/editor/g$c;->u7:Lcom/aide/ui/views/editor/g;

    invoke-static {v1}, Lcom/aide/ui/views/editor/g;->j6(Lcom/aide/ui/views/editor/g;)Ljava/util/Vector;

    move-result-object v1

    iget-object v2, p0, Lcom/aide/ui/views/editor/g$c;->u7:Lcom/aide/ui/views/editor/g;

    invoke-static {v2}, Lcom/aide/ui/views/editor/g;->DW(Lcom/aide/ui/views/editor/g;)Lcom/aide/ui/views/editor/A;

    move-result-object v2

    iget v3, p0, Lcom/aide/ui/views/editor/g$c;->Hw:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/A;->FH()I

    move-result v1

    iget v2, p0, Lcom/aide/ui/views/editor/g$c;->FH:I

    sub-int/2addr v1, v2

    new-array v2, v1, [C

    iget v1, p0, Lcom/aide/ui/views/editor/g$c;->FH:I

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/A;->FH()I

    move-result v3

    iget v4, p0, Lcom/aide/ui/views/editor/g$c;->FH:I

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/aide/ui/views/editor/A;->j6(II[CI)V

    iget-object v1, p0, Lcom/aide/ui/views/editor/g$c;->u7:Lcom/aide/ui/views/editor/g;

    invoke-static {v1}, Lcom/aide/ui/views/editor/g;->j6(Lcom/aide/ui/views/editor/g;)Ljava/util/Vector;

    move-result-object v1

    iget v3, p0, Lcom/aide/ui/views/editor/g$c;->Hw:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aide/ui/views/editor/A;

    invoke-virtual {v1, v2}, Lcom/aide/ui/views/editor/A;->j6([C)V

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/A;->FH()I

    move-result v1

    iget v2, p0, Lcom/aide/ui/views/editor/g$c;->FH:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/aide/ui/views/editor/g$c;->FH:I

    invoke-virtual {v0, v1, v2}, Lcom/aide/ui/views/editor/A;->j6(II)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_4

    :cond_c
    move v0, v1

    goto/16 :goto_2
.end method
