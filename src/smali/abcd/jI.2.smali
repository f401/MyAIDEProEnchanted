.class public abstract Labcd/jI;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/jI$a;,
        Labcd/jI$b;,
        Labcd/jI$c;,
        Labcd/jI$d;,
        Labcd/jI$e;,
        Labcd/jI$f;
    }
.end annotation


# instance fields
.field private final DW:Z

.field private final j6:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/jI;->j6:Ljava/lang/String;

    iput-boolean p2, p0, Labcd/jI;->DW:Z

    return-void
.end method


# virtual methods
.method public j6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Labcd/jI;->j6:Ljava/lang/String;

    return-object v0
.end method
