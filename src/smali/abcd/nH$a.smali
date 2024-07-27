.class final Labcd/nH$a;
.super Labcd/BE$a;

# interfaces
.implements Labcd/nH$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/nH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final Hw:Labcd/LG;


# direct methods
.method constructor <init>(Labcd/LG;Ljava/lang/String;Labcd/yE;)V
    .registers 5

    sget-object v0, Labcd/ME$a;->DW:Labcd/ME$a;

    invoke-direct {p0, v0, p2, p3}, Labcd/BE$a;-><init>(Labcd/ME$a;Ljava/lang/String;Labcd/yE;)V

    iput-object p1, p0, Labcd/nH$a;->Hw:Labcd/LG;

    return-void
.end method


# virtual methods
.method public VH()Labcd/LG;
    .registers 2

    iget-object v0, p0, Labcd/nH$a;->Hw:Labcd/LG;

    return-object v0
.end method

.method public j6(Labcd/BE;)Labcd/nH$c;
    .registers 2

    return-object p0
.end method
