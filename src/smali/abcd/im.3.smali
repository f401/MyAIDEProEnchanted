.class public final Labcd/im;
.super Labcd/Am;


# instance fields
.field private final DW:Labcd/ms;

.field private final FH:I


# direct methods
.method public constructor <init>(Labcd/ms;I)V
    .registers 5

    const-string v0, "AnnotationDefault"

    invoke-direct {p0, v0}, Labcd/Am;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Labcd/im;->DW:Labcd/ms;

    iput p2, p0, Labcd/im;->FH:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "value == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
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
