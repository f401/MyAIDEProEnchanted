.class public final enum Lcom/google/googlejavaformat/java/JavaFormatterOptions$Style;
.super Ljava/lang/Enum;
.source "JavaFormatterOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlejavaformat/java/JavaFormatterOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/googlejavaformat/java/JavaFormatterOptions$Style;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/google/googlejavaformat/java/JavaFormatterOptions$Style;

.field public static final enum AOSP:Lcom/google/googlejavaformat/java/JavaFormatterOptions$Style;

.field public static final enum GOOGLE:Lcom/google/googlejavaformat/java/JavaFormatterOptions$Style;


# instance fields
.field private final indentationMultiplier:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 72
    new-instance v0, Lcom/google/googlejavaformat/java/JavaFormatterOptions$Style;

    const-string v1, "GOOGLE"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/googlejavaformat/java/JavaFormatterOptions$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/googlejavaformat/java/JavaFormatterOptions$Style;->GOOGLE:Lcom/google/googlejavaformat/java/JavaFormatterOptions$Style;

    .line 77
    new-instance v0, Lcom/google/googlejavaformat/java/JavaFormatterOptions$Style;

    const-string v1, "AOSP"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/googlejavaformat/java/JavaFormatterOptions$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/googlejavaformat/java/JavaFormatterOptions$Style;->AOSP:Lcom/google/googlejavaformat/java/JavaFormatterOptions$Style;

    .line 67
    new-array v1, v2, [Lcom/google/googlejavaformat/java/JavaFormatterOptions$Style;

    sget-object v2, Lcom/google/googlejavaformat/java/JavaFormatterOptions$Style;->GOOGLE:Lcom/google/googlejavaformat/java/JavaFormatterOptions$Style;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/google/googlejavaformat/java/JavaFormatterOptions$Style;->$VALUES:[Lcom/google/googlejavaformat/java/JavaFormatterOptions$Style;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 82
    iput p3, p0, Lcom/google/googlejavaformat/java/JavaFormatterOptions$Style;->indentationMultiplier:I

    .line 83
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlejavaformat/java/JavaFormatterOptions$Style;
    .registers 2

    .line 67
    const-class v0, Lcom/google/googlejavaformat/java/JavaFormatterOptions$Style;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/JavaFormatterOptions$Style;

    return-object v0
.end method

.method public static values()[Lcom/google/googlejavaformat/java/JavaFormatterOptions$Style;
    .registers 1

    .line 67
    sget-object v0, Lcom/google/googlejavaformat/java/JavaFormatterOptions$Style;->$VALUES:[Lcom/google/googlejavaformat/java/JavaFormatterOptions$Style;

    invoke-virtual {v0}, [Lcom/google/googlejavaformat/java/JavaFormatterOptions$Style;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlejavaformat/java/JavaFormatterOptions$Style;

    return-object v0
.end method


# virtual methods
.method indentationMultiplier()I
    .registers 2

    .line 86
    iget v0, p0, Lcom/google/googlejavaformat/java/JavaFormatterOptions$Style;->indentationMultiplier:I

    return v0
.end method
