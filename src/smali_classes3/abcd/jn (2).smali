.class public Labcd/jn;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/qn;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/jn$a;
    }
.end annotation


# instance fields
.field private final DW:Labcd/Pt;

.field private EQ:Labcd/yn;

.field private final FH:Z

.field private Hw:Labcd/Ls;

.field private J0:Labcd/xn;

.field private VH:Labcd/Ks;

.field private Zo:Labcd/Ks;

.field private gn:Labcd/Ss;

.field private final j6:Ljava/lang/String;

.field private tp:Labcd/vn;

.field private u7:Labcd/sn;

.field private v5:I

.field private we:Labcd/gn;


# direct methods
.method public constructor <init>(Labcd/Pt;Ljava/lang/String;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_19

    if-eqz p2, :cond_11

    iput-object p2, p0, Labcd/jn;->j6:Ljava/lang/String;

    iput-object p1, p0, Labcd/jn;->DW:Labcd/Pt;

    iput-boolean p3, p0, Labcd/jn;->FH:Z

    const/4 p1, -0x1

    iput p1, p0, Labcd/jn;->v5:I

    return-void

    :cond_11
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "filePath == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_19
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "bytes == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([BLjava/lang/String;Z)V
    .registers 5

    new-instance v0, Labcd/Pt;

    invoke-direct {v0, p1}, Labcd/Pt;-><init>([B)V

    invoke-direct {p0, v0, p2, p3}, Labcd/jn;-><init>(Labcd/Pt;Ljava/lang/String;Z)V

    return-void
.end method

.method private QX()V
    .registers 15

    iget-object v0, p0, Labcd/jn;->DW:Labcd/Pt;

    invoke-virtual {v0}, Labcd/Pt;->FH()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_275

    iget-object v0, p0, Labcd/jn;->J0:Labcd/xn;

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_79

    iget-object v4, p0, Labcd/jn;->DW:Labcd/Pt;

    const-string v5, "begin classfile"

    invoke-interface {v0, v4, v2, v2, v5}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    iget-object v0, p0, Labcd/jn;->J0:Labcd/xn;

    iget-object v4, p0, Labcd/jn;->DW:Labcd/Pt;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "magic: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/jn;->u7()I

    move-result v6

    invoke-static {v6}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-interface {v0, v4, v2, v6, v5}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    iget-object v0, p0, Labcd/jn;->J0:Labcd/xn;

    iget-object v4, p0, Labcd/jn;->DW:Labcd/Pt;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "minor_version: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/jn;->we()I

    move-result v7

    invoke-static {v7}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v6, v3, v5}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    iget-object v0, p0, Labcd/jn;->J0:Labcd/xn;

    iget-object v4, p0, Labcd/jn;->DW:Labcd/Pt;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "major_version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/jn;->tp()I

    move-result v6

    invoke-static {v6}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v1, v3, v5}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    :cond_79
    iget-boolean v0, p0, Labcd/jn;->FH:Z

    const-string v4, ")"

    if-eqz v0, :cond_d4

    invoke-virtual {p0}, Labcd/jn;->u7()I

    move-result v0

    invoke-virtual {p0}, Labcd/jn;->we()I

    move-result v5

    invoke-virtual {p0}, Labcd/jn;->tp()I

    move-result v6

    invoke-direct {p0, v0, v5, v6}, Labcd/jn;->j6(III)Z

    move-result v0

    if-eqz v0, :cond_92

    goto :goto_d4

    :cond_92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bad class file magic ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/jn;->u7()I

    move-result v1

    invoke-static {v1}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") or version ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/jn;->tp()I

    move-result v1

    invoke-static {v1}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/jn;->we()I

    move-result v1

    invoke-static {v1}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Labcd/wn;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Labcd/wn;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d4
    :goto_d4
    new-instance v0, Labcd/en;

    iget-object v5, p0, Labcd/jn;->DW:Labcd/Pt;

    invoke-direct {v0, v5}, Labcd/en;-><init>(Labcd/Pt;)V

    iget-object v5, p0, Labcd/jn;->J0:Labcd/xn;

    invoke-virtual {v0, v5}, Labcd/en;->j6(Labcd/xn;)V

    invoke-virtual {v0}, Labcd/en;->DW()Labcd/Ls;

    move-result-object v5

    iput-object v5, p0, Labcd/jn;->Hw:Labcd/Ls;

    invoke-virtual {v5}, Labcd/hu;->we()V

    invoke-virtual {v0}, Labcd/en;->j6()I

    move-result v0

    iget-object v5, p0, Labcd/jn;->DW:Labcd/Pt;

    invoke-virtual {v5, v0}, Labcd/Pt;->Zo(I)I

    move-result v5

    iget-object v6, p0, Labcd/jn;->DW:Labcd/Pt;

    add-int/lit8 v7, v0, 0x2

    invoke-virtual {v6, v7}, Labcd/Pt;->Zo(I)I

    move-result v6

    iget-object v8, p0, Labcd/jn;->Hw:Labcd/Ls;

    invoke-virtual {v8, v6}, Labcd/Ls;->get(I)Labcd/ms;

    move-result-object v6

    check-cast v6, Labcd/Ks;

    iput-object v6, p0, Labcd/jn;->Zo:Labcd/Ks;

    iget-object v6, p0, Labcd/jn;->DW:Labcd/Pt;

    add-int/lit8 v8, v0, 0x4

    invoke-virtual {v6, v8}, Labcd/Pt;->Zo(I)I

    move-result v6

    iget-object v9, p0, Labcd/jn;->Hw:Labcd/Ls;

    invoke-virtual {v9, v6}, Labcd/Ls;->j6(I)Labcd/ms;

    move-result-object v6

    check-cast v6, Labcd/Ks;

    iput-object v6, p0, Labcd/jn;->VH:Labcd/Ks;

    iget-object v6, p0, Labcd/jn;->DW:Labcd/Pt;

    add-int/lit8 v9, v0, 0x6

    invoke-virtual {v6, v9}, Labcd/Pt;->Zo(I)I

    move-result v6

    iget-object v10, p0, Labcd/jn;->J0:Labcd/xn;

    if-eqz v10, :cond_19e

    iget-object v11, p0, Labcd/jn;->DW:Labcd/Pt;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "access_flags: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Labcd/Mr;->j6(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v0, v3, v12}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    iget-object v10, p0, Labcd/jn;->J0:Labcd/xn;

    iget-object v11, p0, Labcd/jn;->DW:Labcd/Pt;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "this_class: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, p0, Labcd/jn;->Zo:Labcd/Ks;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v7, v3, v12}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    iget-object v7, p0, Labcd/jn;->J0:Labcd/xn;

    iget-object v10, p0, Labcd/jn;->DW:Labcd/Pt;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "super_class: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Labcd/jn;->VH:Labcd/Ks;

    invoke-static {v12}, Labcd/jn;->j6(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v10, v8, v3, v11}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    iget-object v7, p0, Labcd/jn;->J0:Labcd/xn;

    iget-object v8, p0, Labcd/jn;->DW:Labcd/Pt;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "interfaces_count: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v8, v9, v3, v10}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    if-eqz v6, :cond_19e

    iget-object v7, p0, Labcd/jn;->J0:Labcd/xn;

    iget-object v8, p0, Labcd/jn;->DW:Labcd/Pt;

    add-int/lit8 v9, v0, 0x8

    const-string v10, "interfaces:"

    invoke-interface {v7, v8, v9, v2, v10}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    :cond_19e
    add-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v0, v6}, Labcd/jn;->j6(II)Labcd/Ss;

    move-result-object v7

    iput-object v7, p0, Labcd/jn;->gn:Labcd/Ss;

    iget-boolean v7, p0, Labcd/jn;->FH:Z

    if-eqz v7, :cond_1f8

    iget-object v7, p0, Labcd/jn;->Zo:Labcd/Ks;

    invoke-virtual {v7}, Labcd/Ks;->VH()Labcd/Qs;

    move-result-object v7

    invoke-virtual {v7}, Labcd/Qs;->VH()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Labcd/jn;->j6:Ljava/lang/String;

    const-string v9, ".class"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1d4

    iget-object v8, p0, Labcd/jn;->j6:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1d4

    iget-object v8, p0, Labcd/jn;->j6:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v1

    if-ne v8, v9, :cond_1d4

    goto :goto_1f8

    :cond_1d4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "class name ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") does not match path ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/jn;->j6:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Labcd/wn;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Labcd/wn;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1f8
    :goto_1f8
    iput v5, p0, Labcd/jn;->v5:I

    new-instance v1, Labcd/kn;

    iget-object v4, p0, Labcd/jn;->Zo:Labcd/Ks;

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v0, v6

    iget-object v3, p0, Labcd/jn;->we:Labcd/gn;

    invoke-direct {v1, p0, v4, v0, v3}, Labcd/kn;-><init>(Labcd/jn;Labcd/Ks;ILabcd/gn;)V

    iget-object v0, p0, Labcd/jn;->J0:Labcd/xn;

    invoke-virtual {v1, v0}, Labcd/ln;->j6(Labcd/xn;)V

    invoke-virtual {v1}, Labcd/kn;->VH()Labcd/An;

    move-result-object v0

    iput-object v0, p0, Labcd/jn;->u7:Labcd/sn;

    invoke-virtual {v1}, Labcd/ln;->Hw()I

    move-result v0

    new-instance v1, Labcd/mn;

    iget-object v3, p0, Labcd/jn;->Zo:Labcd/Ks;

    iget-object v4, p0, Labcd/jn;->we:Labcd/gn;

    invoke-direct {v1, p0, v3, v0, v4}, Labcd/mn;-><init>(Labcd/jn;Labcd/Ks;ILabcd/gn;)V

    iget-object v0, p0, Labcd/jn;->J0:Labcd/xn;

    invoke-virtual {v1, v0}, Labcd/ln;->j6(Labcd/xn;)V

    invoke-virtual {v1}, Labcd/mn;->VH()Labcd/Dn;

    move-result-object v0

    iput-object v0, p0, Labcd/jn;->tp:Labcd/vn;

    new-instance v0, Labcd/hn;

    invoke-virtual {v1}, Labcd/ln;->Hw()I

    move-result v1

    iget-object v3, p0, Labcd/jn;->we:Labcd/gn;

    invoke-direct {v0, p0, v2, v1, v3}, Labcd/hn;-><init>(Labcd/jn;IILabcd/gn;)V

    iget-object v1, p0, Labcd/jn;->J0:Labcd/xn;

    invoke-virtual {v0, v1}, Labcd/hn;->j6(Labcd/xn;)V

    invoke-virtual {v0}, Labcd/hn;->DW()Labcd/yn;

    move-result-object v1

    iput-object v1, p0, Labcd/jn;->EQ:Labcd/yn;

    invoke-virtual {v1}, Labcd/hu;->we()V

    invoke-virtual {v0}, Labcd/hn;->j6()I

    move-result v0

    iget-object v1, p0, Labcd/jn;->DW:Labcd/Pt;

    invoke-virtual {v1}, Labcd/Pt;->FH()I

    move-result v1

    if-ne v0, v1, :cond_25a

    iget-object v1, p0, Labcd/jn;->J0:Labcd/xn;

    if-eqz v1, :cond_259

    iget-object v3, p0, Labcd/jn;->DW:Labcd/Pt;

    const-string v4, "end classfile"

    invoke-interface {v1, v3, v0, v2, v4}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    :cond_259
    return-void

    :cond_25a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extra bytes at end of class file, at offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Labcd/wn;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/wn;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_275
    new-instance v0, Labcd/wn;

    const-string v1, "severely truncated class file"

    invoke-direct {v0, v1}, Labcd/wn;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private Ws()V
    .registers 4

    const-string v0, "...while parsing "

    :try_start_2
    invoke-direct {p0}, Labcd/jn;->QX()V
    :try_end_5
    .catch Labcd/wn; {:try_start_2 .. :try_end_5} :catch_21
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v1

    new-instance v2, Labcd/wn;

    invoke-direct {v2, v1}, Labcd/wn;-><init>(Ljava/lang/Throwable;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Labcd/jn;->j6:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Labcd/Vt;->j6(Ljava/lang/String;)V

    throw v2

    :catch_21
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Labcd/jn;->j6:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Labcd/Vt;->j6(Ljava/lang/String;)V

    throw v1
.end method

.method private XL()V
    .registers 2

    iget-object v0, p0, Labcd/jn;->EQ:Labcd/yn;

    if-nez v0, :cond_7

    invoke-direct {p0}, Labcd/jn;->Ws()V

    :cond_7
    return-void
.end method

.method private aM()V
    .registers 3

    iget v0, p0, Labcd/jn;->v5:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    invoke-direct {p0}, Labcd/jn;->Ws()V

    :cond_8
    return-void
.end method

.method public static j6(Ljava/lang/Object;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_5

    const-string p0, "(none)"

    return-object p0

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private j6(III)Z
    .registers 5

    const v0, -0x35014542  # -8346975.0f

    if-ne p1, v0, :cond_16

    if-ltz p2, :cond_16

    const/4 p1, 0x1

    const/16 v0, 0x32

    if-ne p3, v0, :cond_f

    if-gtz p2, :cond_16

    return p1

    :cond_f
    if-ge p3, v0, :cond_16

    const/16 p2, 0x2d

    if-lt p3, p2, :cond_16

    return p1

    :cond_16
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public DW()Labcd/Js;
    .registers 3

    invoke-virtual {p0}, Labcd/jn;->FH()Labcd/pn;

    move-result-object v0

    const-string v1, "SourceFile"

    invoke-interface {v0, v1}, Labcd/pn;->j6(Ljava/lang/String;)Labcd/on;

    move-result-object v0

    instance-of v1, v0, Labcd/xm;

    if-eqz v1, :cond_15

    check-cast v0, Labcd/xm;

    invoke-virtual {v0}, Labcd/xm;->j6()Labcd/Js;

    move-result-object v0

    return-object v0

    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public EQ()Labcd/vn;
    .registers 2

    invoke-direct {p0}, Labcd/jn;->XL()V

    iget-object v0, p0, Labcd/jn;->tp:Labcd/vn;

    return-object v0
.end method

.method public FH()Labcd/pn;
    .registers 2

    invoke-direct {p0}, Labcd/jn;->XL()V

    iget-object v0, p0, Labcd/jn;->EQ:Labcd/yn;

    return-object v0
.end method

.method public Hw()Labcd/Pt;
    .registers 2

    iget-object v0, p0, Labcd/jn;->DW:Labcd/Pt;

    return-object v0
.end method

.method public J0()Labcd/Ks;
    .registers 2

    invoke-direct {p0}, Labcd/jn;->aM()V

    iget-object v0, p0, Labcd/jn;->VH:Labcd/Ks;

    return-object v0
.end method

.method public J8()Labcd/Ks;
    .registers 2

    invoke-direct {p0}, Labcd/jn;->aM()V

    iget-object v0, p0, Labcd/jn;->Zo:Labcd/Ks;

    return-object v0
.end method

.method public VH()Labcd/Ss;
    .registers 2

    invoke-direct {p0}, Labcd/jn;->aM()V

    iget-object v0, p0, Labcd/jn;->gn:Labcd/Ss;

    return-object v0
.end method

.method public Zo()Labcd/sn;
    .registers 2

    invoke-direct {p0}, Labcd/jn;->XL()V

    iget-object v0, p0, Labcd/jn;->u7:Labcd/sn;

    return-object v0
.end method

.method public gn()I
    .registers 2

    invoke-direct {p0}, Labcd/jn;->aM()V

    invoke-virtual {p0}, Labcd/jn;->u7()I

    move-result v0

    return v0
.end method

.method public j6()I
    .registers 2

    invoke-direct {p0}, Labcd/jn;->aM()V

    iget v0, p0, Labcd/jn;->v5:I

    return v0
.end method

.method public j6(II)Labcd/Ss;
    .registers 10

    if-nez p2, :cond_5

    sget-object p1, Labcd/Ps;->FH:Labcd/Ps;

    return-object p1

    :cond_5
    iget-object v4, p0, Labcd/jn;->Hw:Labcd/Ls;

    if-eqz v4, :cond_16

    new-instance v6, Labcd/jn$a;

    iget-object v1, p0, Labcd/jn;->DW:Labcd/Pt;

    iget-object v5, p0, Labcd/jn;->J0:Labcd/xn;

    move-object v0, v6

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Labcd/jn$a;-><init>(Labcd/Pt;IILabcd/Ls;Labcd/xn;)V

    return-object v6

    :cond_16
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "pool not yet initialized"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j6(Labcd/gn;)V
    .registers 3

    if-eqz p1, :cond_5

    iput-object p1, p0, Labcd/jn;->we:Labcd/gn;

    return-void

    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "attributeFactory == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public tp()I
    .registers 3

    iget-object v0, p0, Labcd/jn;->DW:Labcd/Pt;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Labcd/Pt;->Zo(I)I

    move-result v0

    return v0
.end method

.method public u7()I
    .registers 3

    iget-object v0, p0, Labcd/jn;->DW:Labcd/Pt;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Labcd/Pt;->DW(I)I

    move-result v0

    return v0
.end method

.method public v5()Labcd/ns;
    .registers 2

    invoke-direct {p0}, Labcd/jn;->aM()V

    iget-object v0, p0, Labcd/jn;->Hw:Labcd/Ls;

    return-object v0
.end method

.method public we()I
    .registers 3

    iget-object v0, p0, Labcd/jn;->DW:Labcd/Pt;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Labcd/Pt;->Zo(I)I

    move-result v0

    return v0
.end method
