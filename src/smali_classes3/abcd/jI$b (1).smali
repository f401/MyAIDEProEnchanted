.class public Labcd/jI$b;
.super Labcd/jI;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/jI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Labcd/jI;-><init>(Ljava/lang/String;Z)V

    return-void
.end method
