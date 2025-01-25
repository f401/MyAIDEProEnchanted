.class public abstract Labcd/Bm;
.super Labcd/Am;


# instance fields
.field private final DW:Labcd/Qm;


# direct methods
.method public constructor <init>(Ljava/lang/String;Labcd/Qm;)V
    .registers 3

    invoke-direct {p0, p1}, Labcd/Am;-><init>(Ljava/lang/String;)V

    :try_start_3
    invoke-virtual {p2}, Labcd/hu;->Zo()Z

    move-result p1
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_7} :catch_14

    if-nez p1, :cond_c

    iput-object p2, p0, Labcd/Bm;->DW:Labcd/Qm;

    return-void

    :cond_c
    :try_start_c
    new-instance p1, Labcd/iu;

    const-string p2, "localVariables.isMutable()"

    invoke-direct {p1, p2}, Labcd/iu;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_14
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_14} :catch_14

    :catch_14
    move-exception p1

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "localVariables == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final Hw()I
    .registers 2

    iget-object v0, p0, Labcd/Bm;->DW:Labcd/Qm;

    invoke-virtual {v0}, Labcd/Xt;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public final j6()Labcd/Qm;
    .registers 2

    iget-object v0, p0, Labcd/Bm;->DW:Labcd/Qm;

    return-object v0
.end method
