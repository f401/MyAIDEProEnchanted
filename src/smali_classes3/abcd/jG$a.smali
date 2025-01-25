.class public Labcd/jG$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/jG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "a"
.end annotation


# instance fields
.field final DW:I

.field final j6:[Ljava/lang/Object;


# direct methods
.method constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Labcd/jG$a;->j6:[Ljava/lang/Object;

    iput p1, p0, Labcd/jG$a;->DW:I

    return-void
.end method
