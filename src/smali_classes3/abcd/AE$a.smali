.class public abstract Labcd/AE$a;
.super Labcd/yE;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/AE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field tp:Labcd/AE$a;


# direct methods
.method public constructor <init>(Labcd/YD;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/yE;-><init>(Labcd/YD;)V

    return-void
.end method
