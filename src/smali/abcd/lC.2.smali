.class public final Labcd/lC;
.super Labcd/CC;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Labcd/CC;",
        ">",
        "Labcd/CC;"
    }
.end annotation


# instance fields
.field final DW:[I

.field final j6:Labcd/CC;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Labcd/CC;[I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;[I)V"
        }
    .end annotation

    invoke-direct {p0}, Labcd/CC;-><init>()V

    iput-object p1, p0, Labcd/lC;->j6:Labcd/CC;

    iput-object p2, p0, Labcd/lC;->DW:[I

    return-void
.end method


# virtual methods
.method public j6()I
    .registers 2

    iget-object v0, p0, Labcd/lC;->j6:Labcd/CC;

    invoke-virtual {v0}, Labcd/CC;->j6()I

    move-result v0

    return v0
.end method
