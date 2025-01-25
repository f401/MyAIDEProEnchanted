.class public final Labcd/im;
.super Labcd/Am;


# instance fields
.field private final DW:Labcd/ms;

.field private final FH:I


# direct methods
.method public constructor <init>(Labcd/ms;I)V
    .registers 4

    const-string v0, "AnnotationDefault"

    invoke-direct {p0, v0}, Labcd/Am;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_c

    iput-object p1, p0, Labcd/im;->DW:Labcd/ms;

    iput p2, p0, Labcd/im;->FH:I

    return-void

    :cond_c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public Hw()I
    .registers 2

    iget v0, p0, Labcd/im;->FH:I

    add-int/lit8 v0, v0, 0x6

    return v0
.end method

.method public j6()Labcd/ms;
    .registers 2

    iget-object v0, p0, Labcd/im;->DW:Labcd/ms;

    return-object v0
.end method
