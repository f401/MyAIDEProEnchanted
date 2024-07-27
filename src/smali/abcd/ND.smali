.class final Labcd/ND;
.super Labcd/MD;


# instance fields
.field private final FH:C


# direct methods
.method protected constructor <init>(C)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Labcd/MD;-><init>(Z)V

    iput-char p1, p0, Labcd/ND;->FH:C

    return-void
.end method


# virtual methods
.method protected final DW(C)Z
    .registers 3

    iget-char v0, p0, Labcd/ND;->FH:C

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
