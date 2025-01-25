.class public Lgroovyjarjarantlr/Token;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static j6:Lgroovyjarjarantlr/Token;


# instance fields
.field protected DW:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lgroovyjarjarantlr/Token;

    const/4 v1, 0x0

    const-string v2, "<no text>"

    invoke-direct {v0, v1, v2}, Lgroovyjarjarantlr/Token;-><init>(ILjava/lang/String;)V

    sput-object v0, Lgroovyjarjarantlr/Token;->j6:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lgroovyjarjarantlr/Token;->DW:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lgroovyjarjarantlr/Token;->DW:I

    iput p1, p0, Lgroovyjarjarantlr/Token;->DW:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lgroovyjarjarantlr/Token;->DW:I

    iput p1, p0, Lgroovyjarjarantlr/Token;->DW:I

    invoke-virtual {p0, p2}, Lgroovyjarjarantlr/Token;->j6(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public DW()I
    .registers 2

    iget v0, p0, Lgroovyjarjarantlr/Token;->DW:I

    return v0
.end method

.method public DW(I)V
    .registers 2

    return-void
.end method

.method public FH(I)V
    .registers 2

    iput p1, p0, Lgroovyjarjarantlr/Token;->DW:I

    return-void
.end method

.method public aM()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public j3()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public j6()Ljava/lang/String;
    .registers 2

    const-string v0, "<no text>"

    return-object v0
.end method

.method public j6(I)V
    .registers 2

    return-void
.end method

.method public j6(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "[\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lgroovyjarjarantlr/Token;->j6()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\",<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lgroovyjarjarantlr/Token;->DW()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ">]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
