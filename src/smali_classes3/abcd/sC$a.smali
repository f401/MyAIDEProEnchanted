.class Labcd/sC$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/sC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/sC$a$a;,
        Labcd/sC$a$b;,
        Labcd/sC$a$c;
    }
.end annotation


# instance fields
.field DW:Labcd/sC$a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LsC<",
            "TS;>.a.b;"
        }
    .end annotation
.end field

.field protected FH:I

.field protected Hw:I

.field protected VH:Labcd/jC;

.field protected Zo:I

.field final gn:Labcd/sC;

.field j6:Labcd/sC$a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LsC<",
            "TS;>.a.b;"
        }
    .end annotation
.end field

.field protected v5:I


# direct methods
.method constructor <init>(Labcd/sC;)V
    .registers 2

    iput-object p1, p0, Labcd/sC$a;->gn:Labcd/sC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Labcd/sC$a$c;

    invoke-direct {p1, p0}, Labcd/sC$a$c;-><init>(Labcd/sC$a;)V

    iput-object p1, p0, Labcd/sC$a;->j6:Labcd/sC$a$b;

    new-instance p1, Labcd/sC$a$a;

    invoke-direct {p1, p0}, Labcd/sC$a$a;-><init>(Labcd/sC$a;)V

    iput-object p1, p0, Labcd/sC$a;->DW:Labcd/sC$a$b;

    return-void
.end method

.method static synthetic j6(Labcd/sC$a;)Labcd/sC;
    .registers 1

    iget-object p0, p0, Labcd/sC$a;->gn:Labcd/sC;

    return-object p0
.end method


# virtual methods
.method DW(IIII)V
    .registers 6

    iput p1, p0, Labcd/sC$a;->FH:I

    iput p2, p0, Labcd/sC$a;->Hw:I

    iput p3, p0, Labcd/sC$a;->v5:I

    iput p4, p0, Labcd/sC$a;->Zo:I

    sub-int/2addr p3, p1

    iget-object v0, p0, Labcd/sC$a;->j6:Labcd/sC$a$b;

    invoke-virtual {v0, p3, p1}, Labcd/sC$a$b;->VH(II)I

    move-result p1

    iput p1, p0, Labcd/sC$a;->FH:I

    add-int/2addr p3, p1

    iput p3, p0, Labcd/sC$a;->v5:I

    sub-int/2addr p4, p2

    iget-object p1, p0, Labcd/sC$a;->DW:Labcd/sC$a$b;

    invoke-virtual {p1, p4, p2}, Labcd/sC$a$b;->VH(II)I

    move-result p1

    iput p1, p0, Labcd/sC$a;->Hw:I

    add-int/2addr p4, p1

    iput p4, p0, Labcd/sC$a;->Zo:I

    return-void
.end method

.method j6(IIII)Labcd/jC;
    .registers 8

    if-eq p1, p2, :cond_35

    if-ne p3, p4, :cond_5

    goto :goto_35

    :cond_5
    iput p1, p0, Labcd/sC$a;->FH:I

    iput p2, p0, Labcd/sC$a;->Hw:I

    iput p3, p0, Labcd/sC$a;->v5:I

    iput p4, p0, Labcd/sC$a;->Zo:I

    sub-int v0, p3, p2

    sub-int v1, p4, p1

    iget-object v2, p0, Labcd/sC$a;->j6:Labcd/sC$a$b;

    sub-int/2addr p3, p1

    invoke-virtual {v2, p3, p1, v0, v1}, Labcd/sC$a$b;->j6(IIII)V

    iget-object p1, p0, Labcd/sC$a;->DW:Labcd/sC$a$b;

    sub-int/2addr p4, p2

    invoke-virtual {p1, p4, p2, v0, v1}, Labcd/sC$a$b;->j6(IIII)V

    const/4 p1, 0x1

    :goto_1e
    iget-object p2, p0, Labcd/sC$a;->j6:Labcd/sC$a$b;

    invoke-virtual {p2, p1}, Labcd/sC$a$b;->j6(I)Z

    move-result p2

    if-nez p2, :cond_32

    iget-object p2, p0, Labcd/sC$a;->DW:Labcd/sC$a$b;

    invoke-virtual {p2, p1}, Labcd/sC$a$b;->j6(I)Z

    move-result p2

    if-eqz p2, :cond_2f

    goto :goto_32

    :cond_2f
    add-int/lit8 p1, p1, 0x1

    goto :goto_1e

    :cond_32
    :goto_32
    iget-object p1, p0, Labcd/sC$a;->VH:Labcd/jC;

    return-object p1

    :cond_35
    :goto_35
    new-instance v0, Labcd/jC;

    invoke-direct {v0, p1, p2, p3, p4}, Labcd/jC;-><init>(IIII)V

    return-object v0
.end method
