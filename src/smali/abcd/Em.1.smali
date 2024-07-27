.class public final Labcd/Em;
.super Labcd/Am;


# instance fields
.field private final DW:Labcd/Pt;

.field private final FH:Labcd/ns;


# direct methods
.method public constructor <init>(Ljava/lang/String;Labcd/Pt;IILabcd/ns;)V
    .registers 7

    add-int v0, p4, p3

    invoke-virtual {p2, p3, v0}, Labcd/Pt;->j6(II)Labcd/Pt;

    move-result-object v0

    invoke-direct {p0, p1, v0, p5}, Labcd/Em;-><init>(Ljava/lang/String;Labcd/Pt;Labcd/ns;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Labcd/Pt;Labcd/ns;)V
    .registers 6

    invoke-direct {p0, p1}, Labcd/Am;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iput-object p2, p0, Labcd/Em;->DW:Labcd/Pt;

    iput-object p3, p0, Labcd/Em;->FH:Labcd/ns;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "data == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public Hw()I
    .registers 2

    iget-object v0, p0, Labcd/Em;->DW:Labcd/Pt;

    invoke-virtual {v0}, Labcd/Pt;->FH()I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    return v0
.end method
