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
    .registers 3

    const-class v0, Lcom/aide/ui/views/editor/g$c;

    const-wide v1, 0x84752f0cabb16d0L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/views/editor/g;IIZI)V
    .registers 16
    .annotation runtime Labcd/su;
        method = 0x115d7845f45ccdb4L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g$c;->j6:Z

    if-eqz v0, :cond_22

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p4}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x1885190374bbbae8L

    const/4 v3, 0x0

    move-object v4, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    iput-object p1, p0, Lcom/aide/ui/views/editor/g$c;->u7:Lcom/aide/ui/views/editor/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/aide/ui/views/editor/g$c;->FH:I

    iput p3, p0, Lcom/aide/ui/views/editor/g$c;->Hw:I

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/views/editor/g$c;->gn:Ljava/lang/StringBuffer;

    iput p5, p0, Lcom/aide/ui/views/editor/g$c;->VH:I

    iput-boolean p4, p0, Lcom/aide/ui/views/editor/g$c;->Zo:Z
    :try_end_36
    .catchall {:try_start_0 .. :try_end_36} :catchall_37

    return-void

    :catchall_37
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g$c;->DW:Z

    if-eqz v1, :cond_5b

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

    move-object v1, v0

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5b
    throw v0
.end method


# virtual methods
.method public DW(I[CII)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0xa45dc8c8125c41dL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g$c;->j6:Z

    if-eqz v0, :cond_1d

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x43acac8787da0ca0L  # 1.03308767330240512E18

    move-object v3, p0

    move-object v5, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aide/ui/views/editor/g$c;->v5:Z

    iget-object v1, p0, Lcom/aide/ui/views/editor/g$c;->gn:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    move v1, p3

    :goto_27
    add-int v3, p3, p4

    if-ge v1, v3, :cond_43

    aget-char v3, p2, v1

    invoke-static {v3}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v3
    :try_end_31
    .catchall {:try_start_0 .. :try_end_31} :catchall_80

    if-eqz v3, :cond_39

    aget-char v3, p2, v1

    const/16 v4, 0x9

    if-ne v3, v4, :cond_40

    :cond_39
    :try_start_39
    iget-object v3, p0, Lcom/aide/ui/views/editor/g$c;->gn:Ljava/lang/StringBuffer;

    aget-char v4, p2, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    :cond_43
    iget-object v1, p0, Lcom/aide/ui/views/editor/g$c;->gn:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-eqz v1, :cond_7f

    iget-object v1, p0, Lcom/aide/ui/views/editor/g$c;->u7:Lcom/aide/ui/views/editor/g;

    invoke-static {v1, v0}, Lcom/aide/ui/views/editor/g;->j6(Lcom/aide/ui/views/editor/g;Z)Z

    iget-object v0, p0, Lcom/aide/ui/views/editor/g$c;->gn:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    new-array v0, v0, [C

    iget-object v1, p0, Lcom/aide/ui/views/editor/g$c;->gn:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3, v0, v2}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    iget-object v1, p0, Lcom/aide/ui/views/editor/g$c;->u7:Lcom/aide/ui/views/editor/g;

    invoke-static {v1}, Lcom/aide/ui/views/editor/g;->j6(Lcom/aide/ui/views/editor/g;)Ljava/util/Vector;

    move-result-object v1

    iget v2, p0, Lcom/aide/ui/views/editor/g$c;->Hw:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aide/ui/views/editor/A;

    iget v2, p0, Lcom/aide/ui/views/editor/g$c;->FH:I

    invoke-virtual {v1, v0, v2}, Lcom/aide/ui/views/editor/A;->j6([CI)V

    iget v0, p0, Lcom/aide/ui/views/editor/g$c;->FH:I

    iget-object v1, p0, Lcom/aide/ui/views/editor/g$c;->gn:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aide/ui/views/editor/g$c;->FH:I
    :try_end_7f
    .catchall {:try_start_39 .. :try_end_7f} :catchall_80

    :cond_7f
    return-void

    :catchall_80
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g$c;->DW:Z

    if-eqz v1, :cond_9f

    const-wide v2, 0x43acac8787da0ca0L  # 1.03308767330240512E18

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

    :cond_9f
    goto :goto_a1

    :goto_a0
    throw v0

    :goto_a1
    goto :goto_a0
.end method

.method public j6(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x2efca3fb8f239001L
    .end annotation

    const-wide v0, -0x390a05d4d1e6380L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/g$c;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/g$c;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public j6(I[CII)Z
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x512c1b7e2da5a13L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g$c;->j6:Z

    if-eqz v0, :cond_1d

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x19b8c5434ba692a0L

    move-object v3, p0

    move-object v5, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    iget-object v0, p0, Lcom/aide/ui/views/editor/g$c;->u7:Lcom/aide/ui/views/editor/g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/aide/ui/views/editor/g;->j6(Lcom/aide/ui/views/editor/g;Z)Z

    iget-object v0, p0, Lcom/aide/ui/views/editor/g$c;->gn:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-boolean v0, p0, Lcom/aide/ui/views/editor/g$c;->Zo:Z
    :try_end_2b
    .catchall {:try_start_0 .. :try_end_2b} :catchall_176

    const/16 v3, 0x9

    if-eqz v0, :cond_65

    move v0, p3

    const/4 v4, 0x0

    :goto_31
    add-int v5, p3, p4

    if-ge v0, v5, :cond_80

    aget-char v5, p2, v0

    if-ne v5, v3, :cond_51

    :try_start_39
    iget v5, p0, Lcom/aide/ui/views/editor/g$c;->VH:I

    rem-int v6, v4, v5

    sub-int v6, v5, v6

    if-nez v6, :cond_42

    goto :goto_43

    :cond_42
    move v5, v6

    :goto_43
    const/4 v6, 0x0

    :goto_44
    if-ge v6, v5, :cond_50

    iget-object v7, p0, Lcom/aide/ui/views/editor/g$c;->gn:Ljava/lang/StringBuffer;

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_44

    :cond_50
    add-int/2addr v4, v5

    :cond_51
    aget-char v5, p2, v0

    invoke-static {v5}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v5

    if-nez v5, :cond_62

    iget-object v5, p0, Lcom/aide/ui/views/editor/g$c;->gn:Ljava/lang/StringBuffer;

    aget-char v6, p2, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    :cond_62
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    :cond_65
    move v0, p3

    :goto_66
    add-int v4, p3, p4

    if-ge v0, v4, :cond_80

    aget-char v4, p2, v0

    invoke-static {v4}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v4
    :try_end_70
    .catchall {:try_start_39 .. :try_end_70} :catchall_176

    if-eqz v4, :cond_76

    aget-char v4, p2, v0

    if-ne v4, v3, :cond_7d

    :cond_76
    :try_start_76
    iget-object v4, p0, Lcom/aide/ui/views/editor/g$c;->gn:Ljava/lang/StringBuffer;

    aget-char v5, p2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_7d
    add-int/lit8 v0, v0, 0x1

    goto :goto_66

    :cond_80
    iget-object v0, p0, Lcom/aide/ui/views/editor/g$c;->gn:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_109

    iget-object v0, p0, Lcom/aide/ui/views/editor/g$c;->gn:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    new-array v3, v0, [C

    iget-object v4, p0, Lcom/aide/ui/views/editor/g$c;->gn:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    invoke-virtual {v4, v2, v5, v3, v2}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    iget v4, p0, Lcom/aide/ui/views/editor/g$c;->FH:I

    if-nez v4, :cond_af

    new-instance v0, Lcom/aide/ui/views/editor/A;

    invoke-direct {v0, v3}, Lcom/aide/ui/views/editor/A;-><init>([C)V

    iget-object v3, p0, Lcom/aide/ui/views/editor/g$c;->u7:Lcom/aide/ui/views/editor/g;

    invoke-static {v3}, Lcom/aide/ui/views/editor/g;->j6(Lcom/aide/ui/views/editor/g;)Ljava/util/Vector;

    move-result-object v3

    iget v4, p0, Lcom/aide/ui/views/editor/g$c;->Hw:I

    invoke-virtual {v3, v0, v4}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto/16 :goto_16e

    :cond_af
    iget-object v4, p0, Lcom/aide/ui/views/editor/g$c;->u7:Lcom/aide/ui/views/editor/g;

    invoke-static {v4}, Lcom/aide/ui/views/editor/g;->j6(Lcom/aide/ui/views/editor/g;)Ljava/util/Vector;

    move-result-object v4

    iget v5, p0, Lcom/aide/ui/views/editor/g$c;->Hw:I

    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/aide/ui/views/editor/A;

    iget v5, p0, Lcom/aide/ui/views/editor/g$c;->FH:I

    invoke-virtual {v4, v3, v5}, Lcom/aide/ui/views/editor/A;->j6([CI)V

    iget v3, p0, Lcom/aide/ui/views/editor/g$c;->FH:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/aide/ui/views/editor/g$c;->FH:I

    iget-object v0, p0, Lcom/aide/ui/views/editor/g$c;->u7:Lcom/aide/ui/views/editor/g;

    invoke-static {v0}, Lcom/aide/ui/views/editor/g;->j6(Lcom/aide/ui/views/editor/g;)Ljava/util/Vector;

    move-result-object v0

    iget-object v3, p0, Lcom/aide/ui/views/editor/g$c;->u7:Lcom/aide/ui/views/editor/g;

    invoke-static {v3}, Lcom/aide/ui/views/editor/g;->DW(Lcom/aide/ui/views/editor/g;)Lcom/aide/ui/views/editor/A;

    move-result-object v3

    iget v5, p0, Lcom/aide/ui/views/editor/g$c;->Hw:I

    add-int/2addr v5, v1

    invoke-virtual {v0, v3, v5}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    invoke-virtual {v4}, Lcom/aide/ui/views/editor/A;->FH()I

    move-result v0

    iget v3, p0, Lcom/aide/ui/views/editor/g$c;->FH:I

    sub-int/2addr v0, v3

    new-array v0, v0, [C

    invoke-virtual {v4}, Lcom/aide/ui/views/editor/A;->FH()I

    move-result v5

    iget v6, p0, Lcom/aide/ui/views/editor/g$c;->FH:I

    sub-int/2addr v5, v6

    invoke-virtual {v4, v3, v5, v0, v2}, Lcom/aide/ui/views/editor/A;->j6(II[CI)V

    iget-object v3, p0, Lcom/aide/ui/views/editor/g$c;->u7:Lcom/aide/ui/views/editor/g;

    invoke-static {v3}, Lcom/aide/ui/views/editor/g;->j6(Lcom/aide/ui/views/editor/g;)Ljava/util/Vector;

    move-result-object v3

    iget v5, p0, Lcom/aide/ui/views/editor/g$c;->Hw:I

    add-int/2addr v5, v1

    invoke-virtual {v3, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/ui/views/editor/A;

    invoke-virtual {v3, v0}, Lcom/aide/ui/views/editor/A;->j6([C)V

    invoke-virtual {v4}, Lcom/aide/ui/views/editor/A;->FH()I

    move-result v0

    iget v3, p0, Lcom/aide/ui/views/editor/g$c;->FH:I

    sub-int/2addr v0, v3

    invoke-virtual {v4, v0, v3}, Lcom/aide/ui/views/editor/A;->j6(II)V

    goto :goto_16e

    :cond_109
    iget v0, p0, Lcom/aide/ui/views/editor/g$c;->FH:I

    if-nez v0, :cond_11f

    iget-object v0, p0, Lcom/aide/ui/views/editor/g$c;->u7:Lcom/aide/ui/views/editor/g;

    invoke-static {v0}, Lcom/aide/ui/views/editor/g;->j6(Lcom/aide/ui/views/editor/g;)Ljava/util/Vector;

    move-result-object v0

    iget-object v3, p0, Lcom/aide/ui/views/editor/g$c;->u7:Lcom/aide/ui/views/editor/g;

    invoke-static {v3}, Lcom/aide/ui/views/editor/g;->DW(Lcom/aide/ui/views/editor/g;)Lcom/aide/ui/views/editor/A;

    move-result-object v3

    iget v4, p0, Lcom/aide/ui/views/editor/g$c;->Hw:I

    invoke-virtual {v0, v3, v4}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_16e

    :cond_11f
    iget-object v0, p0, Lcom/aide/ui/views/editor/g$c;->u7:Lcom/aide/ui/views/editor/g;

    invoke-static {v0}, Lcom/aide/ui/views/editor/g;->j6(Lcom/aide/ui/views/editor/g;)Ljava/util/Vector;

    move-result-object v0

    iget v3, p0, Lcom/aide/ui/views/editor/g$c;->Hw:I

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/views/editor/A;

    iget-object v3, p0, Lcom/aide/ui/views/editor/g$c;->u7:Lcom/aide/ui/views/editor/g;

    invoke-static {v3}, Lcom/aide/ui/views/editor/g;->j6(Lcom/aide/ui/views/editor/g;)Ljava/util/Vector;

    move-result-object v3

    iget-object v4, p0, Lcom/aide/ui/views/editor/g$c;->u7:Lcom/aide/ui/views/editor/g;

    invoke-static {v4}, Lcom/aide/ui/views/editor/g;->DW(Lcom/aide/ui/views/editor/g;)Lcom/aide/ui/views/editor/A;

    move-result-object v4

    iget v5, p0, Lcom/aide/ui/views/editor/g$c;->Hw:I

    add-int/2addr v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/A;->FH()I

    move-result v3

    iget v4, p0, Lcom/aide/ui/views/editor/g$c;->FH:I

    sub-int/2addr v3, v4

    new-array v3, v3, [C

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/A;->FH()I

    move-result v5

    iget v6, p0, Lcom/aide/ui/views/editor/g$c;->FH:I

    sub-int/2addr v5, v6

    invoke-virtual {v0, v4, v5, v3, v2}, Lcom/aide/ui/views/editor/A;->j6(II[CI)V

    iget-object v4, p0, Lcom/aide/ui/views/editor/g$c;->u7:Lcom/aide/ui/views/editor/g;

    invoke-static {v4}, Lcom/aide/ui/views/editor/g;->j6(Lcom/aide/ui/views/editor/g;)Ljava/util/Vector;

    move-result-object v4

    iget v5, p0, Lcom/aide/ui/views/editor/g$c;->Hw:I

    add-int/2addr v5, v1

    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/aide/ui/views/editor/A;

    invoke-virtual {v4, v3}, Lcom/aide/ui/views/editor/A;->j6([C)V

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/A;->FH()I

    move-result v3

    iget v4, p0, Lcom/aide/ui/views/editor/g$c;->FH:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v3, v4}, Lcom/aide/ui/views/editor/A;->j6(II)V

    :goto_16e
    iget v0, p0, Lcom/aide/ui/views/editor/g$c;->Hw:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aide/ui/views/editor/g$c;->Hw:I

    iput v2, p0, Lcom/aide/ui/views/editor/g$c;->FH:I
    :try_end_175
    .catchall {:try_start_76 .. :try_end_175} :catchall_176

    return v1

    :catchall_176
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g$c;->DW:Z

    if-eqz v1, :cond_195

    const-wide v2, 0x19b8c5434ba692a0L

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

    :cond_195
    goto :goto_197

    :goto_196
    throw v0

    :goto_197
    goto :goto_196
.end method
