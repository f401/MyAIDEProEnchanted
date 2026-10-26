.class public Lgroovyjarjarantlr/HTMLCodeGenerator;
.super Lgroovyjarjarantlr/CodeGenerator;


# instance fields
.field protected EQ:Lgroovyjarjarantlr/AlternativeElement;

.field protected tp:Z

.field protected u7:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lgroovyjarjarantlr/CodeGenerator;-><init>()V

    iput v0, p0, Lgroovyjarjarantlr/HTMLCodeGenerator;->u7:I

    iput-boolean v0, p0, Lgroovyjarjarantlr/HTMLCodeGenerator;->tp:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lgroovyjarjarantlr/HTMLCodeGenerator;->EQ:Lgroovyjarjarantlr/AlternativeElement;

    new-instance v0, Lgroovyjarjarantlr/JavaCharFormatter;

    invoke-direct {v0}, Lgroovyjarjarantlr/JavaCharFormatter;-><init>()V

    iput-object v0, p0, Lgroovyjarjarantlr/CodeGenerator;->v5:Lgroovyjarjarantlr/CharFormatter;

    return-void
.end method


# virtual methods
.method public j6(Lgroovyjarjarantlr/GrammarAtom;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public j6(Lgroovyjarjarantlr/collections/impl/Vector;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public j6(Ljava/lang/String;Lgroovyjarjarantlr/ActionTransInfo;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method
