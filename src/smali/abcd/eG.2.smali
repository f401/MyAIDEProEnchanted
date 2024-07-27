.class public Labcd/eG;
.super Labcd/jG;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Labcd/dG;",
        ">",
        "LjG",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private FH:Labcd/qG;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Labcd/jG;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    invoke-super {p0}, Labcd/jG;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/eG;->FH:Labcd/qG;

    return-void
.end method
