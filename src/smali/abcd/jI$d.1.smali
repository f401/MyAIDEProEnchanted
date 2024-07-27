.class public Labcd/jI$d;
.super Labcd/jI;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/jI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private FH:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Labcd/jI;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public DW()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/jI$d;->FH:Ljava/lang/String;

    return-object v0
.end method

.method public j6(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Labcd/jI$d;->FH:Ljava/lang/String;

    return-void
.end method
