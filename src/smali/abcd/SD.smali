.class final Labcd/SD;
.super Labcd/MD;


# instance fields
.field private final FH:C


# direct methods
.method constructor <init>(CZ)V
    .registers 3

    invoke-direct {p0, p2}, Labcd/MD;-><init>(Z)V

    iput-char p1, p0, Labcd/SD;->FH:C

    return-void
.end method


# virtual methods
.method protected final DW(C)Z
    .registers 3

    iget-char v0, p0, Labcd/SD;->FH:C

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
