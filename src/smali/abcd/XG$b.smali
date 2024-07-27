.class final Labcd/XG$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/XG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field final DW:[Labcd/aH;

.field final j6:Labcd/LG;


# direct methods
.method constructor <init>(Labcd/LG;[Labcd/aH;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/XG$b;->j6:Labcd/LG;

    iput-object p2, p0, Labcd/XG$b;->DW:[Labcd/aH;

    return-void
.end method
