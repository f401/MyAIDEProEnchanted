.class public abstract Lgroovyjarjarantlr/FileLineFormatter;
.super Ljava/lang/Object;


# static fields
.field private static j6:Lgroovyjarjarantlr/FileLineFormatter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lgroovyjarjarantlr/DefaultFileLineFormatter;

    invoke-direct {v0}, Lgroovyjarjarantlr/DefaultFileLineFormatter;-><init>()V

    sput-object v0, Lgroovyjarjarantlr/FileLineFormatter;->j6:Lgroovyjarjarantlr/FileLineFormatter;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static j6()Lgroovyjarjarantlr/FileLineFormatter;
    .registers 1

    sget-object v0, Lgroovyjarjarantlr/FileLineFormatter;->j6:Lgroovyjarjarantlr/FileLineFormatter;

    return-object v0
.end method


# virtual methods
.method public abstract j6(Ljava/lang/String;II)Ljava/lang/String;
.end method
