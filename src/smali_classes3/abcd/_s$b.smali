.class Labcd/_s$b;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/tt$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/_s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final DW:Labcd/_s;

.field private j6:I


# direct methods
.method private constructor <init>(Labcd/_s;)V
    .registers 2

    iput-object p1, p0, Labcd/_s$b;->DW:Labcd/_s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Labcd/_s$b;->j6:I

    return-void
.end method

.method synthetic constructor <init>(Labcd/_s;Labcd/Zs;)V
    .registers 3

    invoke-direct {p0, p1}, Labcd/_s$b;-><init>(Labcd/_s;)V

    return-void
.end method


# virtual methods
.method public j6(Labcd/tt;Labcd/tt;)V
    .registers 5

    new-instance v0, Labcd/_s$a;

    invoke-direct {v0}, Labcd/_s$a;-><init>()V

    iget v1, p0, Labcd/_s$b;->j6:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/_s$b;->j6:I

    iput v1, v0, Labcd/_s$a;->j6:I

    iput-object p1, v0, Labcd/_s$a;->FH:Labcd/tt;

    iput-object p2, v0, Labcd/_s$a;->DW:Labcd/tt;

    iget-object p2, p0, Labcd/_s$b;->DW:Labcd/_s;

    invoke-static {p2}, Labcd/_s;->j6(Labcd/_s;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Labcd/_s$b;->DW:Labcd/_s;

    invoke-static {p2}, Labcd/_s;->DW(Labcd/_s;)[Labcd/_s$a;

    move-result-object p2

    invoke-virtual {p1}, Labcd/tt;->DW()I

    move-result p1

    aput-object v0, p2, p1

    return-void
.end method
