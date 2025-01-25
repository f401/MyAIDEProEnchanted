.class public abstract Labcd/zm;
.super Labcd/Am;


# instance fields
.field private final DW:Labcd/Jr;

.field private final FH:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Labcd/Jr;I)V
    .registers 4

    invoke-direct {p0, p1}, Labcd/Am;-><init>(Ljava/lang/String;)V

    :try_start_3
    invoke-virtual {p2}, Labcd/hu;->Zo()Z

    move-result p1
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_7} :catch_16

    if-nez p1, :cond_e

    iput-object p2, p0, Labcd/zm;->DW:Labcd/Jr;

    iput p3, p0, Labcd/zm;->FH:I

    return-void

    :cond_e
    :try_start_e
    new-instance p1, Labcd/iu;

    const-string p2, "annotations.isMutable()"

    invoke-direct {p1, p2}, Labcd/iu;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_16
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_16} :catch_16

    :catch_16
    move-exception p1

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "annotations == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final Hw()I
    .registers 2

    iget v0, p0, Labcd/zm;->FH:I

    add-int/lit8 v0, v0, 0x6

    return v0
.end method

.method public final j6()Labcd/Jr;
    .registers 2

    iget-object v0, p0, Labcd/zm;->DW:Labcd/Jr;

    return-object v0
.end method
