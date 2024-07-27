.class public Labcd/jI$f;
.super Labcd/jI;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/jI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field private FH:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Labcd/jI;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public DW()Z
    .registers 2

    iget-boolean v0, p0, Labcd/jI$f;->FH:Z

    return v0
.end method

.method public j6(Z)V
    .registers 2

    iput-boolean p1, p0, Labcd/jI$f;->FH:Z

    return-void
.end method
