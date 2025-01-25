.class public final Lorg/a/a/a/d;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/nio/charset/Charset;

.field public static b:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "UTF_8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/a/a/a/d;->a:Ljava/nio/charset/Charset;

    const-string v0, "ISO_8859_1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/a/a/a/d;->b:Ljava/nio/charset/Charset;

    return-void
.end method

.method public static a(Ljava/io/Reader;)Lorg/a/a/a/h;
    .registers 2

    const-string v0, "<unknown>"

    invoke-static {p0, v0}, Lorg/a/a/a/d;->a(Ljava/io/Reader;Ljava/lang/String;)Lorg/a/a/a/h;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/Reader;Ljava/lang/String;)Lorg/a/a/a/h;
    .registers 6

    const/16 v0, 0x1000

    :try_start_2
    invoke-static {v0}, Lorg/a/a/a/e;->a(I)Lorg/a/a/a/f;

    move-result-object v0

    const/16 v1, 0x1000

    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    :goto_c
    invoke-virtual {p0, v1}, Ljava/io/Reader;->read(Ljava/nio/CharBuffer;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1f

    invoke-virtual {v0}, Lorg/a/a/a/f;->a()Lorg/a/a/a/e;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/a/a/a/h;->a(Lorg/a/a/a/e;Ljava/lang/String;)Lorg/a/a/a/h;
    :try_end_1a
    .catchall {:try_start_2 .. :try_end_1a} :catchall_29

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    return-object v0

    :cond_1f
    :try_start_1f
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v0, v1}, Lorg/a/a/a/f;->a(Ljava/nio/CharBuffer;)V

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->compact()Ljava/nio/CharBuffer;
    :try_end_28
    .catchall {:try_start_1f .. :try_end_28} :catchall_29

    goto :goto_c

    :catchall_29
    move-exception v0

    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    throw v0
.end method
