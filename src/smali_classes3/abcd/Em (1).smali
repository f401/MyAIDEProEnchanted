.class public final Labcd/Em;
.super Labcd/Am;


# instance fields
.field private final DW:Labcd/Pt;

.field private final FH:Labcd/ns;


# direct methods
.method public constructor <init>(Ljava/lang/String;Labcd/Pt;IILabcd/ns;)V
    .registers 6

    add-int/2addr p4, p3

    invoke-virtual {p2, p3, p4}, Labcd/Pt;->j6(II)Labcd/Pt;

    move-result-object p2

    invoke-direct {p0, p1, p2, p5}, Labcd/Em;-><init>(Ljava/lang/String;Labcd/Pt;Labcd/ns;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Labcd/Pt;Labcd/ns;)V
    .registers 4

    invoke-direct {p0, p1}, Labcd/Am;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_a

    iput-object p2, p0, Labcd/Em;->DW:Labcd/Pt;

    iput-object p3, p0, Labcd/Em;->FH:Labcd/ns;

    return-void

    :cond_a
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "data == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
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
